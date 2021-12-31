#include <badlog.hpp>
#include <string>

int main() {
	Logger logger;
	logger.log(::Debug, "test1");
	logger.log(::Info, "test2");
	logger.log(::Warning, "test3");
	logger.log(::Error, "test4");
	logger.log(::Fatal, "test5");

	return 0;
}
