#!/bin/bash
if [[ $# < 2 ]]; then
 echo "$0 <url> <blog list>";
 exit;
fi
ffuf -u FUZZ -w $2 -H "Content-Type: application/x-www-form-urlencoded" -H "Referer: $1" -d "comment=$1&author=hey&email=hey%40gmail.com&url=$1&submit=Post+Comment&comment_post_ID=5&comment_parent=0" -H "User-Agent: Mozilla/5.0 (Firefox)"
