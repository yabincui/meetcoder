include gmsl-1.1.7/gmsl

UnitTestList := MaxSubArraySumTest CalculateProbabilityTest StringCompressionTest \
                ReadSumOfDigitsTest MakePairsTest PowerOfTwoTest MaximizeNumberWithSwapTest \
                ConnectedGraphTest CoverTheMagicBoardTest \

all: $(call last,$(UnitTestList))

test_all: $(UnitTestList)


JUNIT_MAIN = org.junit.runner.JUnitCore

%.class : %.java
	javac $<

%Test: %.class %Test.class
	java $(JUNIT_MAIN) $@

clean:
	rm -rf *.class
