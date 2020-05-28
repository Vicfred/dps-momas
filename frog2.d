// Vicfred
// https://atcoder.jp/contests/dp/tasks/dp_b
import std.algorithm;
import std.math;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n, k;
    readf("%s %s", &n, &k);
    readln;

    int[] h = [0]~readln.split.map!(to!int).array;

    int[] dp = new int[n+1];

    dp[0..$] = 1<<30;

    dp[0] = 0;
    dp[1] = 0;

    for(int i = 1; i <= n; ++i) {
        for(int j = 1; j <= k; ++j) {
            if(i+j > n)
                break;
            dp[i+j] = min(dp[i+j], dp[i] + abs(h[i] - h[i+j]));
        }
    }

    dp[n].writeln;
}

