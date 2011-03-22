function outputData = clusterData(inputData, numChars)

    [junk outputData] = kmeans(inputData, numChars, 'EmptyAction', 'singleton');

end