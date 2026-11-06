with AUnit.Run;
with AUnit.Reporter.Text;

with Unit_Suite;

-- This is the entry point for the tests
-- Since this project builds an executable, think of this like the main() function in C/C++
procedure Test_Runner is
   -- AUnit.Run.Test_Runner is a generic procedure,
   -- this instantiates it with the Unit_Suite.Suite function,
   -- which contains all of the tests to run
   -- To add a new test suite, use the same format and call it in the procudure body
   procedure Unit_Runner is new AUnit.Run.Test_Runner (Unit_Suite.Suite);

   -- This is what the test suite will use for outputting test results
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   -- Test suites get run here
   Unit_Runner (Reporter);
end Test_Runner;
