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

#ifndef VECTORPOSTPROCESSOR_H
#define VECTORPOSTPROCESSOR_H

#include <string>
// MOOSE includes
#include "InputParameters.h"
#include "Restartable.h"
#include "VectorPostprocessorData.h"

// libMesh
#include "libmesh/parallel.h"

class VectorPostprocessor;

template<>
InputParameters validParams<VectorPostprocessor>();


class VectorPostprocessor
{
public:
  VectorPostprocessor(const std::string & name, InputParameters parameters);

  virtual ~VectorPostprocessor(){ }

  /**
   * This will get called to actually grab the final value the VectorPostprocessor has calculated.
   */
  virtual VectorPostprocessorValue & getVector(const std::string & vector_name);

  /**
   * Get the list of output objects that this class is restricted
   * @return A vector of OutputNames
   */
  std::set<OutputName> getOutputs(){ return std::set<OutputName>(_outputs.begin(), _outputs.end()); }

  /**
   * Returns the name of the VectorPostprocessor.
   */
  std::string PPName() { return _vpp_name; }

protected:
  /**
   * Register a new vector to fill up.
   */
  VectorPostprocessorValue & registerVector(const std::string & vector_name);

  std::string _vpp_name;

  /// Vector of output names
  std::vector<OutputName> _outputs;

  /// The VectorPostprocessorData backend that is holding the vectors for this object...
  VectorPostprocessorData & _vpp_data;
};

#endif
