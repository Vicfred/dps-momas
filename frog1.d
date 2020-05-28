// Vicfred
// https://atcoder.jp/contests/dp/tasks/dp_a
import std.algorithm;
import std.math;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    const int n = readln.chomp.to!int;
    const int[] h = readln.split.map!(to!int).array;

    int[] dp = new int[n];

    dp[1] = abs(h[1]-h[0]);

    for(int i = 2; i < n; ++i)
        dp[i] = min(dp[i-1]+abs(h[i]-h[i-1]), dp[i-2]+abs(h[i]-h[i-2]));

    dp[$-1].writeln;
}
