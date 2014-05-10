/****************************************************************/
/*               DO NOT MODIFY THIS HEADER                      */
/* MOOSE - Multiphysics Object Oriented Simulation Environment  */
/*                                                              */
/*           (c) 2010 Battelle Energy Alliance, LLC             */
/*                   ALL RIGHTS RESERVED                        */
/*                                                              */
/*          Prepared by Battelle Energy Alliance, LLC           */
/*            Under Contract No. DE-AC07-05ID14517              */
/*            With the U. S. Department of Energy               */
/*                                                              */
/*            See COPYRIGHT for full restrictions               */
/****************************************************************/

#ifndef GMVOUTPUT_H
#define GMVOUTPUT_H

// MOOSE includes
#include "OversampleOutput.h"

// Forward declarations
class GMVOutput;

template<>
InputParameters validParams<GMVOutput>();

/**
 * Class for output data to the GMVOutputII format
 */
class GMVOutput :
  public OversampleOutput
{
public:

  /**
   * Class constructor
   */
  GMVOutput(const std::string & name, InputParameters);

protected:

  /**
   * Overload the Output::output method, this is required for GMVOutput
   * output due to the method utilized for outputing
   */
  virtual void output();

  /**
   * Returns the current filename, this method handles adding the timestep suffix
   * @return A string containing the current filename to be written
   */
  std::string filename();

  //@{
  /**
   * Individual component output is not supported for GMVOutput
   */
  virtual void outputNodalVariables();
  virtual void outputElementalVariables();
  virtual void outputPostprocessors();
  virtual void outputVectorPostprocessors();
  virtual void outputScalarVariables();
  //@}

private:

  /// Flag for binary output
  bool _binary;
};

#endif /* GMVOUTPUT_H */
