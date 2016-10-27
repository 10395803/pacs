#ifndef HH_Parameters_HH
#define HH_Parameters_HH
#include <iosfwd>
#include <string>

//! Enumeration for output
enum class outMode{FILE, SCREEN, BOTH};

struct parameters
{
  //! max number of iteration for Gauss-Siedel
  int   itermax;
  //! Tolerance for stopping criterion
  double  toler;
  //! Bar length
   double L;
  //! First longitudinal dimension
  double a1;
 //! Second longitudinal dimension
  double a2;
  //! Dirichlet condition
  double To;
  //! External temperature 
  double Te;
  //! Conductivity
  double k;
  //! Convection coefficient
  double hc;
  //! Number of elements
  int M;
  //! Channel(s) for output
  outMode om;
  //! Name of output file
  std::string file;
  //! Constructor takes default values
  parameters():
    itermax(1000000),
    toler(1e-8),
    L(40.),
    a1(4.),
    a2(50.),
    To(46.),
    Te(20.),
    k(0.164),
    hc(1.e-6*200.),
    M(100),
    om(outMode::BOTH)
    file("results.dat")
  {}
};
//! Prints parameters
std::ostream & operator << (std::ostream &,const parameters &);
#endif
