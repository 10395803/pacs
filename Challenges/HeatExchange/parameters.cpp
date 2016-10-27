#include <iostream>
#include "parameters.hpp"

std::ostream & operator << (std::ostream & out,const parameters & p)
{
  out << "PARAMETER VALUES:" << std::endl;
  out << "itermax= " 	<< p.itermax 	<< std::endl;
  out << "toler= " 		<< p.toler 		<< std::endl;
  out << "L= " 			<< p.L 			<< std::endl;
  out << "a1= " 		<< p.a1 		<< std::endl;
  out << "a2= " 		<< p.a2 		<< std::endl;
  out << "To= "			<< p.To			<< std::endl;
  out << "Te= "			<< p.Te			<< std::endl;
  out << "k= " 			<< p.k			<< std::endl;
  out << "hc= "			<< p.hc			<< std::endl;
  out << "M= " 			<< p.M			<< std::endl;
  out << "outMode="		<< p.outMode	<< std::endl;
  if (p.outMode >= 1)
  	out << "file=" 		<< p.file		<< std::endl;
  out << std::endl;
  return out;
}
