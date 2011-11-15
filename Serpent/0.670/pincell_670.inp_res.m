
% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 1.1.16' ;
TITLE                     (idx, [1:  8])  = 'Untitled' ;
DATE                      (idx, [1: 24])  = 'Mon Nov 14 21:06:11 2011' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 1000 ;
SKIP                      (idx, 1)        = 20 ;
SRC_NORM_MODE             (idx, 1)        = 1 ;
SEED                      (idx, 1)        = 1321322771 ;
MPI_TASKS                 (idx, 1)        = 1 ;
MPI_MODE                  (idx, 1)        = 0 ;
DEBUG                     (idx, 1)        = 0 ;
CPU_TYPE                  (idx, [1: 34])  = 'AMD Phenom(tm) II X4 955 Processor' ;
CPU_MHZ                   (idx, 1)        = 800.0 ;
AVAIL_MEM                 (idx, 1)        = 7994.3 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 41])  = '/opt/serpent/xs/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Delta-tracking parameters:

DT_THRESH                 (idx, 1)        = 9.00000E-01 ;
DT_FRAC                   (idx, 1)        = 9.73393E-01 ;
DT_EFF                    (idx, 1)        = 7.61476E-01 ;
MIN_MACROXS               (idx, 1)        = 1.79808E-01 ;

% Run statistics:

TOT_CPU_TIME              (idx, 1)        = 1.49940E+01 ;
RUNNING_TIME              (idx, 1)        = 2.07094E+01 ;
CPU_USAGE                 (idx, 1)        = 0.72402 ;
INIT_TIME                 (idx, 1)        = 2.34000E-02 ;
TRANSPORT_CYCLE_TIME      (idx, 1)        = 2.06856E+01 ;
BURNUP_CYCLE_TIME         (idx, 1)        = 0.00000E+00 ;
PROCESS_TIME              (idx, 1)        = 3.49999E-04 ;
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

COLLISIONS                (idx, 1)        = 266300971 ;
FISSION_FRACTION          (idx, 1)        = 2.09136E-02 ;
CAPTURE_FRACTION          (idx, 1)        = 1.67039E-02 ;
ELASTIC_FRACTION          (idx, 1)        = 7.37040E-01 ;
INELASTIC_FRACTION        (idx, 1)        = 1.59954E-02 ;
ALPHA_FRACTION            (idx, 1)        = 0.00000E+00 ;
BOUND_SCATTERING_FRACTION (idx, 1)        = 2.09281E-01 ;
NXN_FRACTION              (idx, 1)        = 6.57564E-05 ;
UNKNOWN_FRACTION          (idx, 1)        = 0.00000E+00 ;
VIRTUAL_FRACTION          (idx, 1)        = 2.38524E-01 ;

FREEGAS_FRACTION          (idx, 1)        = 6.40431E-01 ;
TOTAL_ELASTIC_FRACTION    (idx, 1)        = 9.46321E-01 ;
FISSILE_FISSION_FRACTION  (idx, 1)        = 9.40150E-01 ;
LEAKAGE_REACTIONS         (idx, 1)        = 0 ;

REA_SAMPLING_EFF          (idx, 1)        = 6.48733E-01 ;

% Slowing-down and thermalization:

COL_SLOW                  (idx, [1:   2]) = [  2.34960E+01 0.00013 ];
COL_THERM                 (idx, [1:   2]) = [  1.09920E+01 0.00039 ];
COL_TOT                   (idx, [1:   2]) = [  2.65865E+01 0.00016 ];
SLOW_TIME                 (idx, [1:   2]) = [  3.23523E-06 0.00031 ];
THERM_TIME                (idx, [1:   2]) = [  2.06404E-05 0.00042 ];
SLOW_DIST                 (idx, [1:   2]) = [  1.65691E+01 0.00025 ];
THERM_DIST                (idx, [1:   2]) = [  3.94098E+00 0.00031 ];
THERM_FRAC                (idx, [1:   2]) = [  5.51149E-01 0.00029 ];

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

ENTROPY_X                 (idx, [1:   2]) = [  7.48377E-01 0.00019 ];
ENTROPY_Y                 (idx, [1:   2]) = [  7.48208E-01 0.00020 ];
ENTROPY_Z                 (idx, [1:   2]) = [  6.40685E-17 0.05040 ];
ENTROPY_TOT               (idx, [1:   2]) = [  7.34883E-01 0.00011 ];

% Fission source centre:

SOURCE_X0                 (idx, [1:   2]) = [  8.21057E-05 1.10307 ];
SOURCE_Y0                 (idx, [1:   2]) = [  1.06820E-04 0.86837 ];
SOURCE_Z0                 (idx, [1:   2]) = [ -7.49964E+00 0.09938 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   2]) = [  1.36994E+00 0.00029 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.37043E+00 0.00014 ];
COL_KEFF                  (idx, [1:   2]) = [  1.37017E+00 0.00032 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.37043E+00 0.00014 ];
ABS_KINF                  (idx, [1:   2]) = [  1.37043E+00 0.00014 ];
ABS_GC_KEFF               (idx, [1:   2]) = [  1.37043E+00 0.00014 ];
ABS_GC_KINF               (idx, [1:   2]) = [  1.37043E+00 0.00014 ];
IMPL_ALPHA_EIG            (idx, [1:   2]) = [  2.73655E+04 0.00045 ];
FIXED_ALPHA_EIG           (idx, [1:   2]) = [  0.00000E+00 0.00000 ];
GEOM_ALBEDO               (idx, [1:   2]) = [  1.00000E+00 0.00000 ];

% Normalized total reaction rates:

TOT_POWER                 (idx, [1:   2]) = [  1.80225E-11 0.00014 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.36805E+00 0.00014 ];
TOT_FISSRATE              (idx, [1:   2]) = [  5.56027E-01 0.00014 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.00000E+00 0.00000 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.00000 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.00000 ];
TOT_SRCRATE               (idx, [1:   2]) = [ -6.23837E-05 6.57031 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.54045E+01 0.00021 ];
TOT_RR                    (idx, [1:   2]) = [  2.65899E+01 0.00017 ];
TOT_SOLU_ABSRATE          (idx, [1:   2]) = [  0.00000E+00 0.00000 ];

TOT_FMASS                 (idx, 1)        = 4.83199E-03 ;
TOT_POWDENS               (idx, [1:   2]) = [  3.72983E-15 0.00014 ];


% Point-kinetic parameters:

ANA_PROMPT_LIFETIME       (idx, [1:   2]) = [  1.35116E-05 0.00044 ];
IMPL_PROMPT_LIFETIME      (idx, [1:   2]) = [  1.35364E-05 0.00029 ];
ANA_REPROD_TIME           (idx, [1:   2]) = [  9.86337E-06 0.00045 ];
IMPL_REPROD_TIME          (idx, [1:   2]) = [  9.87752E-06 0.00025 ];
DELAYED_EMTIME            (idx, [1:   2]) = [  1.02064E+01 0.00903 ];

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.89233E+00 0.00022 ];
SIX_FF_F                  (idx, [1:   2]) = [  9.56020E-01 0.00009 ];
SIX_FF_P                  (idx, [1:   2]) = [  5.50489E-01 0.00029 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.37602E+00 0.00026 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.00000 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.00000 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.37027E+00 0.00027 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  1.37027E+00 0.00027 ];

% Delayed neutron parameters:

USE_DELNU                 (idx, 1)        = 1 ;
PRECURSOR_GROUPS          (idx, 1)        = 6 ;
BETA_EFF                  (idx, [1:  14]) = [  6.97131E-03 0.00526  1.98867E-04 0.03110  1.11443E-03 0.01350  1.08563E-03 0.01369  3.19613E-03 0.00772  1.02603E-03 0.01430  3.50228E-04 0.02339 ];
BETA_ZERO                 (idx, [1:  14]) = [  7.04201E-03 0.00013  2.02900E-04 0.00098  1.11857E-03 0.00042  1.10148E-03 0.00029  3.22877E-03 0.00013  1.04302E-03 0.00094  3.47276E-04 0.00044 ];
DECAY_CONSTANT            (idx, [1:  14]) = [  8.15957E-01 0.01253  1.24907E-02 0.00000  3.16516E-02 0.00021  1.10172E-01 0.00027  3.20543E-01 0.00022  1.34589E+00 0.00016  8.87886E+00 0.00136 ];

% Parameters for group constant generation

GC_UNI                    (idx, 1)        = 0 ;
GC_SYM                    (idx, 1)        = 0 ;
GC_NE                     (idx, 1)        = 2 ;
GC_BOUNDS                 (idx, [1:   3]) = [  2.00000E+01  6.25000E-07  1.00000E-11 ];
GC_REMXS_INCLUDE_MULT     (idx, 1)        = 1 ;

% Few-group cross sections:

FLUX                      (idx, [1:   6]) = [  4.54045E+01 0.00021  4.03751E+01 0.00024  5.02936E+00 0.00032 ];
LEAK                      (idx, [1:   6]) = [  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000 ];
TOTXS                     (idx, [1:   6]) = [  5.85630E-01 0.00009  5.09163E-01 0.00007  1.19946E+00 0.00012 ];
FISSXS                    (idx, [1:   6]) = [  1.22467E-02 0.00028  3.66547E-03 0.00028  8.11351E-02 0.00026 ];
CAPTXS                    (idx, [1:   6]) = [  9.77853E-03 0.00024  7.49313E-03 0.00035  2.81251E-02 0.00020 ];
ABSXS                     (idx, [1:   6]) = [  2.20252E-02 0.00021  1.11586E-02 0.00027  1.09260E-01 0.00024 ];
RABSXS                    (idx, [1:   6]) = [  2.19866E-02 0.00021  1.11151E-02 0.00027  1.09260E-01 0.00024 ];
ELAXS                     (idx, [1:   6]) = [  5.54192E-01 0.00009  4.87419E-01 0.00007  1.09020E+00 0.00014 ];
INELAXS                   (idx, [1:   6]) = [  9.41271E-03 0.00026  1.05853E-02 0.00025  5.38214E-15 0.03387 ];
SCATTXS                   (idx, [1:   6]) = [  5.63605E-01 0.00009  4.98004E-01 0.00007  1.09020E+00 0.00014 ];
SCATTPRODXS               (idx, [1:   6]) = [  5.63643E-01 0.00009  4.98048E-01 0.00007  1.09020E+00 0.00014 ];
N2NXS                     (idx, [1:   6]) = [  3.82238E-05 0.00381  4.29853E-05 0.00381  0.00000E+00 0.00000 ];
REMXS                     (idx, [1:   6]) = [  2.19866E-02 0.00021  2.50055E-02 0.00017  1.11477E-01 0.00025 ];
NUBAR                     (idx, [1:   6]) = [  2.46040E+00 0.00001  2.52575E+00 0.00003  2.43670E+00 0.00000 ];
NSF                       (idx, [1:   6]) = [  3.01318E-02 0.00027  9.25805E-03 0.00028  1.97702E-01 0.00026 ];
RECIPVEL                  (idx, [1:   6]) = [  2.97627E-07 0.00037  5.38554E-08 0.00029  2.25447E-06 0.00013 ];
FISSE                     (idx, [1:   6]) = [  2.02307E+02 0.00000  2.03088E+02 0.00000  2.02023E+02 0.00000 ];

% Fission spectra:

CHI                       (idx, [1:   4]) = [  1.00000E+00 0.00000  0.00000E+00 0.00000 ];
CHIP                      (idx, [1:   4]) = [  1.00000E+00 0.00000  0.00000E+00 0.00000 ];
CHID                      (idx, [1:   4]) = [  1.00000E+00 0.00000  0.00000E+00 0.00000 ];

% Group-transfer probabilities and cross sections:

GTRANSFP                  (idx, [1:   8]) = [  9.72108E-01 0.00001  2.03375E-03 0.00297  2.78920E-02 0.00026  9.97966E-01 0.00001 ];
GTRANSFXS                 (idx, [1:   8]) = [  4.84114E-01 0.00007  2.21710E-03 0.00296  1.38904E-02 0.00029  1.08799E+00 0.00014 ];

% Group-production probabilities and cross sections:

GPRODP                    (idx, [1:   8]) = [  9.72195E-01 0.00001  2.03375E-03 0.00297  2.78920E-02 0.00026  9.97966E-01 0.00001 ];
GPRODXS                   (idx, [1:   8]) = [  4.84157E-01 0.00007  2.21710E-03 0.00296  1.38904E-02 0.00029  1.08799E+00 0.00014 ];

% Diffusion parameters:

DIFFAREA                  (idx, [1:   6]) = [  6.06272E+01 0.00043  4.21836E+01 0.00043  3.57257E+00 0.00127 ];
DIFFCOEF                  (idx, [1:   6]) = [  1.33297E+00 0.00045  1.05480E+00 0.00041  3.98237E-01 0.00125 ];
TRANSPXS                  (idx, [1:   6]) = [  2.50119E-01 0.00045  3.16069E-01 0.00041  8.38320E-01 0.00125 ];
MUBAR                     (idx, [1:   6]) = [  5.95290E-01 0.00035  3.87735E-01 0.00066  3.31233E-01 0.00294 ];

% Material buckling:

MAT_BUCKLING              (idx, [1:   2]) = [  6.11095E-03 0.00065 ];

% Leakage estimate of diffusion coefficient:

LEAK_DIFFCOEF             (idx, [1:   6]) = [  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000 ];

% PN scattering cross sections:

SCATT0                    (idx, [1:   6]) = [  5.63600E-01 0.00010  4.98002E-01 0.00007  1.09017E+00 0.00015 ];
SCATT1                    (idx, [1:   6]) = [  2.23130E-01 0.00012  2.13858E-01 0.00012  2.97559E-01 0.00030 ];
SCATT2                    (idx, [1:   6]) = [  8.41092E-02 0.00020  8.47865E-02 0.00021  7.86724E-02 0.00085 ];
SCATT3                    (idx, [1:   6]) = [  9.09268E-03 0.00156  7.16513E-03 0.00203  2.45661E-02 0.00228 ];
SCATT4                    (idx, [1:   6]) = [ -7.74408E-03 0.00162 -8.24669E-03 0.00153 -3.70897E-03 0.01440 ];
SCATT5                    (idx, [1:   6]) = [  1.00073E-03 0.01138  5.50829E-04 0.02102  4.61300E-03 0.00960 ];

% P1 diffusion parameters:

P1_TRANSPXS               (idx, [1:   6]) = [  3.62499E-01 0.00011  2.95304E-01 0.00009  9.01904E-01 0.00016 ];
P1_DIFFCOEF               (idx, [1:   6]) = [  9.19554E-01 0.00011  1.12879E+00 0.00009  3.69598E-01 0.00016 ];
P1_MUBAR                  (idx, [1:   6]) = [  3.95903E-01 0.00009  4.29432E-01 0.00009  2.72949E-01 0.00028 ];

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

ADFS                      (idx, [1:  16]) = [  9.94881E-01 0.00024  1.04507E+00 0.00043  9.94508E-01 0.00025  1.04578E+00 0.00045  9.95198E-01 0.00025  1.04435E+00 0.00045  9.95126E-01 0.00025  1.04546E+00 0.00042 ];
ADFC                      (idx, [1:  16]) = [  9.91106E-01 0.00051  1.08619E+00 0.00080  9.91079E-01 0.00050  1.08558E+00 0.00082  9.90925E-01 0.00052  1.08572E+00 0.00082  9.91079E-01 0.00050  1.08430E+00 0.00083 ];

