
% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 1.1.16' ;
TITLE                     (idx, [1:  8])  = 'Untitled' ;
DATE                      (idx, [1: 24])  = 'Mon Nov 14 21:08:09 2011' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 1000 ;
SKIP                      (idx, 1)        = 20 ;
SRC_NORM_MODE             (idx, 1)        = 1 ;
SEED                      (idx, 1)        = 1321322889 ;
MPI_TASKS                 (idx, 1)        = 1 ;
MPI_MODE                  (idx, 1)        = 0 ;
DEBUG                     (idx, 1)        = 0 ;
CPU_TYPE                  (idx, [1: 34])  = 'AMD Phenom(tm) II X4 955 Processor' ;
CPU_MHZ                   (idx, 1)        = 3200.0 ;
AVAIL_MEM                 (idx, 1)        = 7994.3 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 41])  = '/opt/serpent/xs/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Delta-tracking parameters:

DT_THRESH                 (idx, 1)        = 9.00000E-01 ;
DT_FRAC                   (idx, 1)        = 9.73376E-01 ;
DT_EFF                    (idx, 1)        = 7.52182E-01 ;
MIN_MACROXS               (idx, 1)        = 1.79808E-01 ;

% Run statistics:

TOT_CPU_TIME              (idx, 1)        = 1.53905E+01 ;
RUNNING_TIME              (idx, 1)        = 1.58179E+01 ;
CPU_USAGE                 (idx, 1)        = 0.97298 ;
INIT_TIME                 (idx, 1)        = 2.67167E-02 ;
TRANSPORT_CYCLE_TIME      (idx, 1)        = 1.57904E+01 ;
BURNUP_CYCLE_TIME         (idx, 1)        = 0.00000E+00 ;
PROCESS_TIME              (idx, 1)        = 6.66667E-04 ;
CYCLE_IDX                 (idx, 1)        = 1000 ;
SOURCE_NEUTRONS           (idx, 1)        = 10000000 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00000E+04 0.00000 ];
MEMSIZE                   (idx, 1)        = 61.4;
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Energy grid parameters:

ERG_EMIN                  (idx, 1)        = 1.00000E-11 ;
ERG_EMAX                  (idx, 1)        = 2.00000E+01 ;
ERG_TOL                   (idx, 1)        = 0.00000E+00 ;
ERG_NE                    (idx, 1)        = 107853 ;
ERG_NE_INI                (idx, 1)        = 108080 ;
ERG_NE_IMP                (idx, 1)        = 12453 ;
ERG_DIX                   (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
URES_MODE                 (idx, 1)        = 1 ;
URES_DILU_CUT             (idx, 1)        = 0.00000E+00 ;
URES_EMIN                 (idx, 1)        = 1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 4 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_ISOTOPES              (idx, 1)        = 10 ;
TOT_TRANSPORT_ISOTOPES    (idx, 1)        = 10 ;
TOT_DECAY_ISOTOPES        (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 354 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Reaction mode counters:

COLLISIONS                (idx, 1)        = 271401608 ;
FISSION_FRACTION          (idx, 1)        = 2.08451E-02 ;
CAPTURE_FRACTION          (idx, 1)        = 1.60620E-02 ;
ELASTIC_FRACTION          (idx, 1)        = 7.16437E-01 ;
INELASTIC_FRACTION        (idx, 1)        = 1.47292E-02 ;
ALPHA_FRACTION            (idx, 1)        = 0.00000E+00 ;
BOUND_SCATTERING_FRACTION (idx, 1)        = 2.31865E-01 ;
NXN_FRACTION              (idx, 1)        = 6.11271E-05 ;
UNKNOWN_FRACTION          (idx, 1)        = 0.00000E+00 ;
VIRTUAL_FRACTION          (idx, 1)        = 2.47818E-01 ;

FREEGAS_FRACTION          (idx, 1)        = 6.57911E-01 ;
TOTAL_ELASTIC_FRACTION    (idx, 1)        = 9.48302E-01 ;
FISSILE_FISSION_FRACTION  (idx, 1)        = 9.44322E-01 ;
LEAKAGE_REACTIONS         (idx, 1)        = 0 ;

REA_SAMPLING_EFF          (idx, 1)        = 6.56095E-01 ;

% Slowing-down and thermalization:

COL_SLOW                  (idx, [1:   2]) = [  2.30203E+01 0.00012 ];
COL_THERM                 (idx, [1:   2]) = [  1.17912E+01 0.00036 ];
COL_TOT                   (idx, [1:   2]) = [  2.70979E+01 0.00017 ];
SLOW_TIME                 (idx, [1:   2]) = [  2.95963E-06 0.00033 ];
THERM_TIME                (idx, [1:   2]) = [  2.05737E-05 0.00039 ];
SLOW_DIST                 (idx, [1:   2]) = [  1.55485E+01 0.00025 ];
THERM_DIST                (idx, [1:   2]) = [  3.77178E+00 0.00029 ];
THERM_FRAC                (idx, [1:   2]) = [  5.77506E-01 0.00028 ];

% Parameters for burnup calculation:

BURN_MODE                 (idx, 1)        = 2 ;
BURN_STEP                 (idx, 1)        = 1 ;
BURN_TOT_STEPS            (idx, 1)        = 1 ;
BURNUP                    (idx, 1)        = 0.00000E+00 ;
BURN_DAYS                 (idx, 1)        = 0.00000E+00 ;
ENERGY_OUTPUT             (idx, 1)        = 0.00000E+00 ;
DEP_TTA_CUTOFF            (idx, 1)        = 1.00000E-15 ;
DEP_STABILITY_CUTOFF      (idx, 1)        = 1.00000E-22 ;
DEP_FP_YIELD_CUTOFF       (idx, 1)        = 1.00000E-22 ;
DEP_XS_FRAC_CUTOFF        (idx, 1)        = 0.00000E+00 ;
DEP_XS_ENERGY_CUTOFF      (idx, 1)        = -1.00000E+00 ;
BURN_MATERIALS            (idx, 1)        = 0 ;
FP_NUCLIDES_INCLUDED      (idx, 1)        = 0 ;
FP_NUCLIDES_AVAILABLE     (idx, 1)        = 0 ;
TOT_ACTIVITY              (idx, 1)        = 0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        = 0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        = 0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        = 0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        = 0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        = 0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        = 0.00000E+00 ;

% Fission source entropies:

ENTROPY_X                 (idx, [1:   2]) = [  7.48267E-01 0.00019 ];
ENTROPY_Y                 (idx, [1:   2]) = [  7.48162E-01 0.00019 ];
ENTROPY_Z                 (idx, [1:   2]) = [  6.43889E-17 0.04955 ];
ENTROPY_TOT               (idx, [1:   2]) = [  7.34787E-01 0.00010 ];

% Fission source centre:

SOURCE_X0                 (idx, [1:   2]) = [ -1.43211E-04 0.60381 ];
SOURCE_Y0                 (idx, [1:   2]) = [ -4.20485E-05 2.08162 ];
SOURCE_Z0                 (idx, [1:   2]) = [ -1.04862E+01 0.09153 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   2]) = [  1.39111E+00 0.00030 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.39133E+00 0.00014 ];
COL_KEFF                  (idx, [1:   2]) = [  1.39166E+00 0.00031 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.39133E+00 0.00014 ];
ABS_KINF                  (idx, [1:   2]) = [  1.39133E+00 0.00014 ];
ABS_GC_KEFF               (idx, [1:   2]) = [  1.39133E+00 0.00014 ];
ABS_GC_KINF               (idx, [1:   2]) = [  1.39133E+00 0.00014 ];
IMPL_ALPHA_EIG            (idx, [1:   2]) = [  2.81128E+04 0.00043 ];
FIXED_ALPHA_EIG           (idx, [1:   2]) = [  0.00000E+00 0.00000 ];
GEOM_ALBEDO               (idx, [1:   2]) = [  1.00000E+00 0.00000 ];

% Normalized total reaction rates:

TOT_POWER                 (idx, [1:   2]) = [  1.83083E-11 0.00014 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.38902E+00 0.00014 ];
TOT_FISSRATE              (idx, [1:   2]) = [  5.64895E-01 0.00014 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.00000E+00 0.00000 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.00000 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.00000 ];
TOT_SRCRATE               (idx, [1:   2]) = [ -7.41049E-05 5.73374 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.25838E+01 0.00021 ];
TOT_RR                    (idx, [1:   2]) = [  2.70896E+01 0.00017 ];
TOT_SOLU_ABSRATE          (idx, [1:   2]) = [  0.00000E+00 0.00000 ];

TOT_FMASS                 (idx, 1)        = 4.83199E-03 ;
TOT_POWDENS               (idx, [1:   2]) = [  3.78897E-15 0.00014 ];


% Point-kinetic parameters:

ANA_PROMPT_LIFETIME       (idx, [1:   2]) = [  1.38985E-05 0.00043 ];
IMPL_PROMPT_LIFETIME      (idx, [1:   2]) = [  1.39202E-05 0.00029 ];
ANA_REPROD_TIME           (idx, [1:   2]) = [  9.99149E-06 0.00045 ];
IMPL_REPROD_TIME          (idx, [1:   2]) = [  1.00049E-05 0.00025 ];
DELAYED_EMTIME            (idx, [1:   2]) = [  1.03565E+01 0.00909 ];

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.89300E+00 0.00022 ];
SIX_FF_F                  (idx, [1:   2]) = [  9.51828E-01 0.00010 ];
SIX_FF_P                  (idx, [1:   2]) = [  5.76854E-01 0.00028 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.33843E+00 0.00025 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.00000 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.00000 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.39106E+00 0.00028 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  1.39106E+00 0.00028 ];

% Delayed neutron parameters:

USE_DELNU                 (idx, 1)        = 1 ;
PRECURSOR_GROUPS          (idx, 1)        = 6 ;
BETA_EFF                  (idx, [1:  14]) = [  6.83916E-03 0.00545  1.91938E-04 0.03091  1.09236E-03 0.01360  1.08285E-03 0.01376  3.16054E-03 0.00790  9.76430E-04 0.01414  3.35048E-04 0.02515 ];
BETA_ZERO                 (idx, [1:  14]) = [  7.00382E-03 0.00012  2.03389E-04 0.00099  1.11629E-03 0.00043  1.09796E-03 0.00029  3.21182E-03 0.00012  1.03004E-03 0.00096  3.44323E-04 0.00045 ];
DECAY_CONSTANT            (idx, [1:  14]) = [  7.95678E-01 0.01314  1.24908E-02 0.00000  3.16645E-02 0.00022  1.10146E-01 0.00028  3.20259E-01 0.00021  1.34647E+00 0.00015  8.87819E+00 0.00140 ];

% Parameters for group constant generation

GC_UNI                    (idx, 1)        = 0 ;
GC_SYM                    (idx, 1)        = 0 ;
GC_NE                     (idx, 1)        = 2 ;
GC_BOUNDS                 (idx, [1:   3]) = [  2.00000E+01  6.25000E-07  1.00000E-11 ];
GC_REMXS_INCLUDE_MULT     (idx, 1)        = 1 ;

% Few-group cross sections:

FLUX                      (idx, [1:   6]) = [  4.25838E+01 0.00021  3.74013E+01 0.00025  5.18246E+00 0.00031 ];
LEAK                      (idx, [1:   6]) = [  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000 ];
TOTXS                     (idx, [1:   6]) = [  6.36158E-01 0.00010  5.43024E-01 0.00008  1.30826E+00 0.00013 ];
FISSXS                    (idx, [1:   6]) = [  1.32662E-02 0.00027  3.71586E-03 0.00028  8.21892E-02 0.00025 ];
CAPTXS                    (idx, [1:   6]) = [  1.02180E-02 0.00026  7.62604E-03 0.00039  2.89238E-02 0.00019 ];
ABSXS                     (idx, [1:   6]) = [  2.34842E-02 0.00021  1.13419E-02 0.00030  1.11113E-01 0.00024 ];
RABSXS                    (idx, [1:   6]) = [  2.34451E-02 0.00021  1.12974E-02 0.00030  1.11113E-01 0.00024 ];
ELAXS                     (idx, [1:   6]) = [  6.03269E-01 0.00010  5.20975E-01 0.00008  1.19714E+00 0.00014 ];
INELAXS                   (idx, [1:   6]) = [  9.40414E-03 0.00029  1.07073E-02 0.00028  6.00429E-15 0.03333 ];
SCATTXS                   (idx, [1:   6]) = [  6.12674E-01 0.00010  5.31682E-01 0.00008  1.19714E+00 0.00014 ];
SCATTPRODXS               (idx, [1:   6]) = [  6.12713E-01 0.00010  5.31727E-01 0.00008  1.19714E+00 0.00014 ];
N2NXS                     (idx, [1:   6]) = [  3.90499E-05 0.00369  4.44607E-05 0.00369  0.00000E+00 0.00000 ];
REMXS                     (idx, [1:   6]) = [  2.34451E-02 0.00021  2.69983E-02 0.00018  1.13320E-01 0.00024 ];
NUBAR                     (idx, [1:   6]) = [  2.45889E+00 0.00001  2.52691E+00 0.00003  2.43670E+00 0.00000 ];
NSF                       (idx, [1:   6]) = [  3.26200E-02 0.00027  9.38962E-03 0.00028  2.00271E-01 0.00025 ];
RECIPVEL                  (idx, [1:   6]) = [  3.26361E-07 0.00037  5.49050E-08 0.00031  2.28531E-06 0.00013 ];
FISSE                     (idx, [1:   6]) = [  2.02288E+02 0.00000  2.03099E+02 0.00000  2.02023E+02 0.00000 ];

% Fission spectra:

CHI                       (idx, [1:   4]) = [  1.00000E+00 0.00000  0.00000E+00 0.00000 ];
CHIP                      (idx, [1:   4]) = [  1.00000E+00 0.00000  0.00000E+00 0.00000 ];
CHID                      (idx, [1:   4]) = [  1.00000E+00 0.00000  0.00000E+00 0.00000 ];

% Group-transfer probabilities and cross sections:

GTRANSFP                  (idx, [1:   8]) = [  9.70470E-01 0.00001  1.84400E-03 0.00310  2.95304E-02 0.00026  9.98156E-01 0.00001 ];
GTRANSFXS                 (idx, [1:   8]) = [  5.15981E-01 0.00007  2.20736E-03 0.00308  1.57009E-02 0.00029  1.19493E+00 0.00014 ];

% Group-production probabilities and cross sections:

GPRODP                    (idx, [1:   8]) = [  9.70553E-01 0.00001  1.84400E-03 0.00310  2.95304E-02 0.00026  9.98156E-01 0.00001 ];
GPRODXS                   (idx, [1:   8]) = [  5.16026E-01 0.00007  2.20736E-03 0.00308  1.57009E-02 0.00029  1.19493E+00 0.00014 ];

% Diffusion parameters:

DIFFAREA                  (idx, [1:   6]) = [  5.40727E+01 0.00043  3.71102E+01 0.00045  3.26277E+00 0.00120 ];
DIFFCOEF                  (idx, [1:   6]) = [  1.26773E+00 0.00045  1.00188E+00 0.00042  3.69715E-01 0.00117 ];
TRANSPXS                  (idx, [1:   6]) = [  2.62992E-01 0.00045  3.32764E-01 0.00042  9.02829E-01 0.00117 ];
MUBAR                     (idx, [1:   6]) = [  6.09073E-01 0.00033  3.95461E-01 0.00065  3.38649E-01 0.00263 ];

% Material buckling:

MAT_BUCKLING              (idx, [1:   2]) = [  7.23830E-03 0.00062 ];

% Leakage estimate of diffusion coefficient:

LEAK_DIFFCOEF             (idx, [1:   6]) = [  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000 ];

% PN scattering cross sections:

SCATT0                    (idx, [1:   6]) = [  6.12679E-01 0.00010  5.31686E-01 0.00008  1.19715E+00 0.00014 ];
SCATT1                    (idx, [1:   6]) = [  2.45228E-01 0.00012  2.33692E-01 0.00012  3.28479E-01 0.00029 ];
SCATT2                    (idx, [1:   6]) = [  9.17404E-02 0.00020  9.24799E-02 0.00020  8.64036E-02 0.00084 ];
SCATT3                    (idx, [1:   6]) = [  9.94849E-03 0.00154  7.58192E-03 0.00207  2.70259E-02 0.00219 ];
SCATT4                    (idx, [1:   6]) = [ -8.67092E-03 0.00160 -9.27222E-03 0.00155 -4.33267E-03 0.01200 ];
SCATT5                    (idx, [1:   6]) = [  1.05269E-03 0.01202  4.83421E-04 0.02688  5.15921E-03 0.00895 ];

% P1 diffusion parameters:

P1_TRANSPXS               (idx, [1:   6]) = [  3.90930E-01 0.00012  3.09332E-01 0.00009  9.79777E-01 0.00015 ];
P1_DIFFCOEF               (idx, [1:   6]) = [  8.52682E-01 0.00012  1.07760E+00 0.00009  3.40222E-01 0.00015 ];
P1_MUBAR                  (idx, [1:   6]) = [  4.00257E-01 0.00009  4.39530E-01 0.00008  2.74385E-01 0.00026 ];

% B1 critical spectrum calculation:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.00000 ];
B1_BUCKLING               (idx, [1:   2]) = [  0.00000E+00 0.00000 ];
B1_FLUX                   (idx, [1:   6]) = [  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000 ];
B1_TOTXS                  (idx, [1:   6]) = [  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000 ];
B1_NSF                    (idx, [1:   6]) = [  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000 ];
B1_FISSXS                 (idx, [1:   6]) = [  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000 ];
B1_CHI                    (idx, [1:   4]) = [  0.00000E+00 0.00000  0.00000E+00 0.00000 ];
B1_ABSXS                  (idx, [1:   6]) = [  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000 ];
B1_RABSXS                 (idx, [1:   6]) = [  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000 ];
B1_REMXS                  (idx, [1:   6]) = [  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000 ];
B1_DIFFCOEF               (idx, [1:   6]) = [  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000 ];
B1_SCATTXS                (idx, [1:   8]) = [  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000 ];
B1_SCATTPRODXS            (idx, [1:   8]) = [  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000 ];

% Assembly discontinuity factors:

ADFS                      (idx, [1:  16]) = [  9.94323E-01 0.00024  1.04537E+00 0.00043  9.93997E-01 0.00025  1.04544E+00 0.00042  9.93928E-01 0.00025  1.04611E+00 0.00042  9.94610E-01 0.00025  1.04530E+00 0.00043 ];
ADFC                      (idx, [1:  16]) = [  9.89017E-01 0.00051  1.08891E+00 0.00078  9.89588E-01 0.00050  1.08944E+00 0.00077  9.90103E-01 0.00049  1.08795E+00 0.00078  9.89377E-01 0.00052  1.08725E+00 0.00077 ];

