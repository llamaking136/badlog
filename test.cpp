#include <badlog.hpp>
#include <string>

int main() {
	Logger logger;
	logger.log(LogLevel::Debug, "test1");
	logger.log(LogLevel::Info, "test2");
	logger.log(LogLevel::Warning, "test3");
	logger.log(LogLevel::Error, "test4");
	logger.log(LogLevel::Fatal, "test5");

	return 0;
}
