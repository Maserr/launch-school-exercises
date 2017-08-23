// Review the code below and tell what the output will be? Don't run the code
// until you've tried to process it yourself first.

(false && undefined);                           // false
(false || undefined);                           // undefined
((false && undefined) || (false || undefined)); // undefined
((false || undefined) || (false && undefined)); // false
((false && undefined) && (false || undefined)); // false
((false || undefined) && (false && undefined)); // undefined
('a' || (false && undefined) || '');            // 'a'
((false && undefined) || 'a' || '');            // 'a'
('a' && (false || undefined) && '');            // undefined
((false || undefined) && 'a' && '');            // undefined
