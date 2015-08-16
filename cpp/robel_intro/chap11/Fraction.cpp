#include "Fraction.h"

Fraction::Fraction(double numer, double denom)
  : m_numer(numer), m_denom(denom) {
}

double Fraction::GetNumer() const {
  return m_numer;
}

double Fraction::GetDenom() const {
  return m_denom;
}
