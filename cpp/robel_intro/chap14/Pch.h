#ifndef PCH_H_
#define PCH_H_

#ifdef NDEBUG
#include "Release/Pch.h"
#else
#include "Debug/Pch.h"
#endif // NDEBUG

#endif // PCH_H_
