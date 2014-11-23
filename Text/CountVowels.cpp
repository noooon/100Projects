//
// Enter a string and the program counts the number of vowels in the text. For 
// added complexity have it report a sum of each vowel found.
//

#include <iostream>
#include <map>

int main(int argc, char *argv[])
{
	std::map<char, int> vowelCounts;
	std::string str("Supercalifragilistic!");
	//std::cin >> str;

	vowelCounts['a'] = 0;
	vowelCounts['e'] = 0;
	vowelCounts['i'] = 0;
	vowelCounts['o'] = 0;
	vowelCounts['u'] = 0;

	std::size_t found = str.find_first_of("aeiou");

	while (found != std::string::npos) {
		++vowelCounts[str[found]];
		found = str.find_first_of("aeiou", found + 1);
	}

	std::cout << str << std::endl;

	for (auto it = vowelCounts.begin(); it != vowelCounts.end(); ++it) {
		std::cout << it->first << ": " << (*it).second << std::endl;
	}

	return 0;
}
