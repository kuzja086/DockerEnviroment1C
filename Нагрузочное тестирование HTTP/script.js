import http from 'k6/http';
import { sleep } from 'k6';
import { check } from 'k6';

export default function () {
 http.get(http.url`http://ip:81/AIS_KSS/hs/BisnessPay/BpDebtRequest?CodLS=1123`);
}