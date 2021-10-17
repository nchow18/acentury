<?php namespace OFFLINE\GDPR\Models;

use Carbon\Carbon;
use Model;

class Log extends Model
{
    use \October\Rain\Database\Traits\Validation;

    public $table = 'offline_gdpr_logs';

    const UNDECIDED = 'undecided';
    const ACCEPTED = 'accepted';
    const DECLINED = 'declined';

    public $rules = [
        'session_id' => 'required',
        'decision' => 'required',
    ];

    public $fillable = ['decision', 'session_id', 'useragent'];

    public function beforeCreate()
    {
        $regs = GDPRSettings::get('ignore_useragents', GDPRSettings::$defaults['ignore_useragents']);
        foreach ($regs as $regex) {
            try {
                if (!isset($regex['useragent'])) {
                    continue;
                }
                if (preg_match($regex['useragent'], $this->useragent)) {
                    return false;
                }
            } catch (\Throwable $e) {
                logger()->error(
                    '[OFFLINE.GDPR] preg_match on user agent failed.',
                    ['regex' => $regex, 'ua' => $this->useragent, 'e' => $e]
                );
            }
        }
    }

    public function gdprCleanup(Carbon $deadline, int $keepDays)
    {
        self::where('created_at', '<', $deadline)->delete();
    }
}
