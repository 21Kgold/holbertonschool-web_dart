int teamScore(Map team) {
    int score = team['Free throws'] * 1 + team['2 pointers'] * 2 +
        team['3 pointers'] * 3;
    return score;
}

int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
    int scoreA = teamScore(teamA);
    int scoreB = teamScore(teamB);
    if (scoreA > scoreB) {
        return 1;
    } else if (scoreA == scoreB) {
        return 0;
    } else {
        return 2;
    }
}
