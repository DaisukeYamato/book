#ifndef FRACTION_H_
#define FRACTION_H_

class Fraction {
 public:
  Fraction(double numer=0, double denom = 1);

 public:
  double GetNumer() const;
  double GetDenom() const;

 private:
  double m_numer;
  double m_denom;
};

#endif // FRACTION_H_
