CDF      
      
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes         num_elem      
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1        num_nod_per_el1       num_side_ss1      num_side_ss2      num_nod_ns1       num_nod_ns2       num_elem_var      num_info  x         api_version       @�
=   version       @�
=   floating_point_word_size            	file_size               int64_status             title         advection_out.e    maximum_name_length                    
time_whole                            ��   	eb_status                             �   eb_prop1               name      ID              �   	ns_status         	                    �   ns_prop1      	         name      ID              �   	ss_status         
                    �   ss_prop1      
         name      ID              �   coordx                            �   coordy                               coordz                                eb_names                       $      8   ns_names      	                 D      \   ss_names      
                 D      �   
coor_names                         d      �   node_num_map                          	H   connect1                  	elem_type         EDGE2               	T   elem_num_map                          	d   elem_ss1                          	l   side_ss1                          	p   elem_ss2                          	t   side_ss2                          	x   node_ns1                          	|   node_ns2                          	�   name_elem_var                          $      	�   vals_elem_var1eb1                                ��   elem_var_tab                             	�   info_records                      v�      	�                                 @       @      @                                                                                          left                             right                              left                             right                                                                                                                                                                               v                                      ####################                                                             # Created by MOOSE #                                                             ####################                                                             ### Command Line Arguments ###                                                    /home/lindad/projects/moose/test/moose_test-oprof -i advection.i --error --e... rror-unused --error-override --timing Outputs/perf_graph=true --no-gdb-backtr... ace### Version Info ###                                                                                                                                           Framework Information:                                                           MOOSE Version:           git commit 5f37449db8 on 2020-08-25                     LibMesh Version:         2350109dedbf5b9fde5e445d0059e1b905afb2b9                PETSc Version:           3.13.3                                                  SLEPc Version:           3.13.3                                                  Current Time:            Wed Aug 26 07:23:31 2020                                Executable Timestamp:    Tue Aug 25 18:29:17 2020                                                                                                                                                                                                  ### Input File ###                                                                                                                                                []                                                                                 inactive                       = (no_default)                                    initial_from_file_timestep     = LATEST                                          initial_from_file_var          = INVALID                                         custom_blocks                  = (no_default)                                    custom_orders                  = (no_default)                                    element_order                  = AUTO                                            order                          = AUTO                                            side_order                     = AUTO                                            type                           = GAUSS                                         []                                                                                                                                                                [Executioner]                                                                      auto_preconditioning           = 1                                               inactive                       = (no_default)                                    isObjectAction                 = 1                                               type                           = Steady                                          accept_on_max_picard_iteration = 0                                               auto_advance                   = INVALID                                         automatic_scaling              = INVALID                                         compute_initial_residual_before_preset_bcs = 0                                   compute_scaling_once           = 1                                               contact_line_search_allowed_lambda_cuts = 2                                      contact_line_search_ltol       = INVALID                                         control_tags                   = (no_default)                                    custom_abs_tol                 = 1e-50                                           custom_rel_tol                 = 1e-08                                           direct_pp_value                = 0                                               disable_picard_residual_norm_check = 0                                           enable                         = 1                                               l_abs_tol                      = 1e-50                                           l_max_its                      = 10000                                           l_tol                          = 1e-05                                           line_search                    = default                                         line_search_package            = petsc                                           max_xfem_update                = 4294967295                                      mffd_type                      = wp                                              nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 1e-50                                           nl_div_tol                     = -1                                              nl_max_funcs                   = 10000                                           nl_max_its                     = 50                                              nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-08                                           num_grids                      = 1                                               petsc_options                  = INVALID                                         petsc_options_iname            = '-pc_type -sub_pc_factor_shift_type -sub_p... c_type'                                                                            petsc_options_value            = 'asm NONZERO lu'                                picard_abs_tol                 = 1e-50                                           picard_custom_pp               = INVALID                                         picard_force_norms             = 0                                               picard_max_its                 = 1                                               picard_rel_tol                 = 1e-08                                           relaxation_factor              = 1                                               relaxed_variables              = (no_default)                                    resid_vs_jac_scaling_param     = 0                                               restart_file_base              = (no_default)                                    scaling_group_variables        = INVALID                                         skip_exception_check           = 0                                               snesmf_reuse_base              = 1                                               solve_type                     = NEWTON                                          splitting                      = INVALID                                         time                           = 0                                               update_xfem_at_timestep_begin  = 0                                               verbose                        = 0                                             []                                                                                                                                                                [FVBCs]                                                                            inactive                       = (no_default)                                                                                                                     [./advection]                                                                      inactive                     = (no_default)                                      isObjectAction               = 1                                                 type                         = FVAdvectionFunctionBC                             advected_interp_method       = average                                           boundary                     = 'left right'                                      control_tags                 = FVBCs                                             displacements                = INVALID                                           enable                       = 1                                                 exact_solution               = exact                                             extra_matrix_tags            = INVALID                                           extra_vector_tags            = INVALID                                           implicit                     = 1                                                 matrix_tags                  = system                                            use_displaced_mesh           = 0                                                 variable                     = v                                                 vector_tags                  = nontime                                           velocity                     = '(x,y,z)=(     1.1,        0,        0)'        [../]                                                                          []                                                                                                                                                                [FVKernels]                                                                                                                                                         [./advection]                                                                      inactive                     = (no_default)                                      isObjectAction               = 1                                                 type                         = FVAdvection                                       advected_interp_method       = average                                           block                        = INVALID                                           control_tags                 = FVKernels                                         enable                       = 1                                                 extra_matrix_tags            = INVALID                                           extra_vector_tags            = INVALID                                           ghost_layers                 = 1                                                 implicit                     = 1                                                 matrix_tags                  = system                                            use_displaced_mesh           = 0                                                 variable                     = v                                                 vector_tags                  = nontime                                           velocity                     = '(x,y,z)=(     1.1,        0,        0)'        [../]                                                                                                                                                             [./body_v]                                                                         inactive                     = (no_default)                                      isObjectAction               = 1                                                 type                         = FVBodyForce                                       block                        = INVALID                                           control_tags                 = FVKernels                                         enable                       = 1                                                 extra_matrix_tags            = INVALID                                           extra_vector_tags            = INVALID                                           function                     = forcing                                           ghost_layers                 = 1                                                 implicit                     = 1                                                 matrix_tags                  = system                                            postprocessor                = 1                                                 use_displaced_mesh           = 0                                                 value                        = 1                                                 variable                     = v                                                 vector_tags                  = nontime                                         [../]                                                                          []                                                                                                                                                                [Functions]                                                                                                                                                         [./exact]                                                                          inactive                     = (no_default)                                      isObjectAction               = 1                                                 type                         = ParsedFunction                                    control_tags                 = Functions                                         enable                       = 1                                                 vals                         = INVALID                                           value                        = sin(x)                                            vars                         = INVALID                                         [../]                                                                                                                                                             [./forcing]                                                                        inactive                     = (no_default)                                      isObjectAction               = 1                                                 type                         = ParsedFunction                                    control_tags                 = Functions                                         enable                       = 1                                                 vals                         = 1.1                                               value                        = '(x*a*cos(x) + a*sin(x))/x'                       vars                         = a                                               [../]                                                                          []                                                                                                                                                                [Mesh]                                                                             displacements                  = INVALID                                         inactive                       = (no_default)                                    use_displaced_mesh             = 1                                               include_local_in_ghosting      = 0                                               output_ghosting                = 0                                               block_id                       = INVALID                                         block_name                     = INVALID                                         boundary_id                    = INVALID                                         boundary_name                  = INVALID                                         construct_side_list_from_node_list = 0                                           ghosted_boundaries             = INVALID                                         ghosted_boundaries_inflation   = INVALID                                         isObjectAction                 = 1                                               second_order                   = 0                                               skip_partitioning              = 0                                               type                           = FileMesh                                        uniform_refine                 = 0                                               allow_renumbering              = 1                                               centroid_partitioner_direction = INVALID                                         construct_node_list_from_side_list = 1                                           control_tags                   = INVALID                                         dim                            = 1                                               enable                         = 1                                               final_generator                = INVALID                                         ghosting_patch_size            = INVALID                                         max_leaf_size                  = 10                                              nemesis                        = 0                                               parallel_type                  = DEFAULT                                         partitioner                    = default                                         patch_size                     = 40                                              patch_update_strategy          = never                                                                                                                            [./gen_mesh]                                                                       inactive                     = (no_default)                                      isObjectAction               = 1                                                 type                         = GeneratedMeshGenerator                            bias_x                       = 1                                                 bias_y                       = 1                                                 bias_z                       = 1                                                 boundary_id_offset           = 0                                                 boundary_name_prefix         = INVALID                                           control_tags                 = Mesh                                              dim                          = 1                                                 elem_type                    = INVALID                                           enable                       = 1                                                 extra_element_integers       = INVALID                                           gauss_lobatto_grid           = 0                                                 nx                           = 2                                                 ny                           = 1                                                 nz                           = 1                                                 xmax                         = 3                                                 xmin                         = 2                                                 ymax                         = 1                                                 ymin                         = 0                                                 zmax                         = 1                                                 zmin                         = 0                                               [../]                                                                          []                                                                                                                                                                [Mesh]                                                                                                                                                              [./gen_mesh]                                                                     [../]                                                                          []                                                                                                                                                                [Mesh]                                                                                                                                                              [./gen_mesh]                                                                     [../]                                                                          []                                                                                                                                                                [Outputs]                                                                          append_date                    = 0                                               append_date_format             = INVALID                                         checkpoint                     = 0                                               color                          = 1                                               console                        = 1                                               controls                       = 0                                               csv                            = 1                                               dofmap                         = 0                                               execute_on                     = 'INITIAL TIMESTEP_END'                          exodus                         = 1                                               file_base                      = INVALID                                         gmv                            = 0                                               gnuplot                        = 0                                               hide                           = INVALID                                         inactive                       = (no_default)                                    interval                       = 1                                               nemesis                        = 0                                               output_if_base_contains        = INVALID                                         perf_graph                     = 1                                               print_linear_converged_reason  = 1                                               print_linear_residuals         = 1                                               print_mesh_changed_info        = 0                                               print_nonlinear_converged_reason = 1                                             print_perf_log                 = 0                                               show                           = INVALID                                         solution_history               = 0                                               sync_times                     = (no_default)                                    tecplot                        = 0                                               vtk                            = 0                                               xda                            = 0                                               xdr                            = 0                                               xml                            = 0                                             []                                                                                                                                                                [Postprocessors]                                                                                                                                                    [./error]                                                                          inactive                     = (no_default)                                      isObjectAction               = 1                                                 type                         = ElementL2Error                                    allow_duplicate_execution_on_initial = 0                                         block                        = INVALID                                           control_tags                 = Postprocessors                                    enable                       = 1                                                 execute_on                   = TIMESTEP_END                                      function                     = exact                                             implicit                     = 1                                                 outputs                      = 'console csv'                                     seed                         = 0                                                 use_displaced_mesh           = 0                                                 variable                     = v                                               [../]                                                                                                                                                             [./h]                                                                              inactive                     = (no_default)                                      isObjectAction               = 1                                                 type                         = AverageElementSize                                allow_duplicate_execution_on_initial = 0                                         block                        = INVALID                                           control_tags                 = Postprocessors                                    enable                       = 1                                                 execute_on                   = TIMESTEP_END                                      implicit                     = 1                                                 outputs                      = 'console csv'                                     seed                         = 0                                                 use_displaced_mesh           = 0                                               [../]                                                                          []                                                                                                                                                                [Problem]                                                                          inactive                       = (no_default)                                    isObjectAction                 = 1                                               name                           = 'MOOSE Problem'                                 type                           = FEProblem                                       library_name                   = (no_default)                                    library_path                   = (no_default)                                    object_names                   = INVALID                                         register_objects_from          = INVALID                                         block                          = INVALID                                         control_tags                   = (no_default)                                    coord_type                     = RZ                                              default_ghosting               = 0                                               enable                         = 1                                               error_on_jacobian_nonzero_reallocation = 0                                       extra_tag_matrices             = INVALID                                         extra_tag_vectors              = INVALID                                         force_restart                  = 0                                               ignore_zeros_in_jacobian       = 0                                               kernel_coverage_check          = 0                                               material_coverage_check        = 1                                               material_dependency_check      = 1                                               near_null_space_dimension      = 0                                               null_space_dimension           = 0                                               parallel_barrier_messaging     = 0                                               restart_file_base              = INVALID                                         rz_coord_axis                  = Y                                               skip_additional_restart_data   = 0                                               skip_nl_system_check           = 0                                               solve                          = 1                                               transpose_null_space_dimension = 0                                               use_nonlinear                  = 1                                             []                                                                                                                                                                [Variables]                                                                                                                                                         [./v]                                                                              family                       = MONOMIAL                                          inactive                     = (no_default)                                      isObjectAction               = 1                                                 order                        = CONSTANT                                          scaling                      = INVALID                                           type                         = MooseVariableBase                                 initial_from_file_timestep   = LATEST                                            initial_from_file_var        = INVALID                                           block                        = INVALID                                           components                   = 1                                                 control_tags                 = Variables                                         eigen                        = 0                                                 enable                       = 1                                                 fv                           = 1                                                 initial_condition            = 1                                                 outputs                      = INVALID                                           use_dual                     = 0                                               [../]                                                                          []                                                                                       ?�������?�������?�      ?��HS�?��_8d<