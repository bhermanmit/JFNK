
% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 1.1.16' ;
TITLE                     (idx, [1:  8])  = 'Untitled' ;
DATE                      (idx, [1: 24])  = 'Mon Nov 14 21:09:16 2011' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 1000 ;
SKIP                      (idx, 1)        = 20 ;
SRC_NORM_MODE             (idx, 1)        = 1 ;
SEED                      (idx, 1)        = 1321322956 ;
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
DT_FRAC                   (idx, 1)        = 9.73148E-01 ;
DT_EFF                    (idx, 1)        = 7.47178E-01 ;
MIN_MACROXS               (idx, 1)        = 1.79808E-01 ;

% Run statistics:

TOT_CPU_TIME              (idx, 1)        = 1.53873E+01 ;
RUNNING_TIME              (idx, 1)        = 2.12259E+01 ;
CPU_USAGE                 (idx, 1)        = 0.72493 ;
INIT_TIME                 (idx, 1)        = 4.52333E-02 ;
TRANSPORT_CYCLE_TIME      (idx, 1)        = 2.11800E+01 ;
BURNUP_CYCLE_TIME         (idx, 1)        = 0.00000E+00 ;
PROCESS_TIME              (idx, 1)        = 6.33333E-04 ;
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

COLLISIONS                (idx, 1)        = 274182824 ;
FISSION_FRACTION          (idx, 1)        = 2.07827E-02 ;
CAPTURE_FRACTION          (idx, 1)        = 1.57485E-02 ;
ELASTIC_FRACTION          (idx, 1)        = 7.06333E-01 ;
INELASTIC_FRACTION        (idx, 1)        = 1.41143E-02 ;
ALPHA_FRACTION            (idx, 1)        = 0.00000E+00 ;
BOUND_SCATTERING_FRACTION (idx, 1)        = 2.42963E-01 ;
NXN_FRACTION              (idx, 1)        = 5.88622E-05 ;
UNKNOWN_FRACTION          (idx, 1)        = 0.00000E+00 ;
VIRTUAL_FRACTION          (idx, 1)        = 2.52822E-01 ;

FREEGAS_FRACTION          (idx, 1)        = 6.65940E-01 ;
TOTAL_ELASTIC_FRACTION    (idx, 1)        = 9.49296E-01 ;
FISSILE_FISSION_FRACTION  (idx, 1)        = 9.46000E-01 ;
LEAKAGE_REACTIONS         (idx, 1)        = 0 ;

REA_SAMPLING_EFF          (idx, 1)        = 6.59770E-01 ;

% Slowing-down and thermalization:

COL_SLOW                  (idx, [1:   2]) = [  2.28115E+01 0.00012 ];
COL_THERM                 (idx, [1:   2]) = [  1.21951E+01 0.00037 ];
COL_TOT                   (idx, [1:   2]) = [  2.73767E+01 0.00017 ];
SLOW_TIME                 (idx, [1:   2]) = [  2.83776E-06 0.00033 ];
THERM_TIME                (idx, [1:   2]) = [  2.05388E-05 0.00040 ];
SLOW_DIST                 (idx, [1:   2]) = [  1.50803E+01 0.00025 ];
THERM_DIST                (idx, [1:   2]) = [  3.69480E+00 0.00030 ];
THERM_FRAC                (idx, [1:   2]) = [  5.89852E-01 0.00027 ];

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

ENTROPY_X                 (idx, [1:   2]) = [  7.48179E-01 0.00019 ];
ENTROPY_Y                 (idx, [1:   2]) = [  7.48317E-01 0.00019 ];
ENTROPY_Z                 (idx, [1:   2]) = [  6.45490E-17 0.04944 ];
ENTROPY_TOT               (idx, [1:   2]) = [  7.34870E-01 0.00010 ];

% Fission source centre:

SOURCE_X0                 (idx, [1:   2]) = [ -5.64382E-05 1.58811 ];
SOURCE_Y0                 (idx, [1:   2]) = [ -7.49684E-05 1.15195 ];
SOURCE_Z0                 (idx, [1:   2]) = [  2.43774E+01 0.03722 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   2]) = [  1.40070E+00 0.00030 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.40107E+00 0.00014 ];
COL_KEFF                  (idx, [1:   2]) = [  1.40140E+00 0.00031 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.40107E+00 0.00014 ];
ABS_KINF                  (idx, [1:   2]) = [  1.40107E+00 0.00014 ];
ABS_GC_KEFF               (idx, [1:   2]) = [  1.40107E+00 0.00014 ];
ABS_GC_KINF               (idx, [1:   2]) = [  1.40107E+00 0.00014 ];
IMPL_ALPHA_EIG            (idx, [1:   2]) = [  2.84550E+04 0.00042 ];
FIXED_ALPHA_EIG           (idx, [1:   2]) = [  0.00000E+00 0.00000 ];
GEOM_ALBEDO               (idx, [1:   2]) = [  1.00000E+00 0.00000 ];

% Normalized total reaction rates:

TOT_POWER                 (idx, [1:   2]) = [  1.84419E-11 0.00014 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.39880E+00 0.00014 ];
TOT_FISSRATE              (idx, [1:   2]) = [  5.69042E-01 0.00014 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.00000E+00 0.00000 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.00000 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.00000 ];
TOT_SRCRATE               (idx, [1:   2]) = [ -7.78778E-05 5.36461 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.13037E+01 0.00020 ];
TOT_RR                    (idx, [1:   2]) = [  2.73686E+01 0.00016 ];
TOT_SOLU_ABSRATE          (idx, [1:   2]) = [  0.00000E+00 0.00000 ];

TOT_FMASS                 (idx, 1)        = 4.83199E-03 ;
TOT_POWDENS               (idx, [1:   2]) = [  3.81662E-15 0.00014 ];


% Point-kinetic parameters:

ANA_PROMPT_LIFETIME       (idx, [1:   2]) = [  1.40763E-05 0.00044 ];
IMPL_PROMPT_LIFETIME      (idx, [1:   2]) = [  1.40950E-05 0.00029 ];
ANA_REPROD_TIME           (idx, [1:   2]) = [  1.00500E-05 0.00046 ];
IMPL_REPROD_TIME          (idx, [1:   2]) = [  1.00602E-05 0.00025 ];
DELAYED_EMTIME            (idx, [1:   2]) = [  1.05012E+01 0.00902 ];

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.89302E+00 0.00023 ];
SIX_FF_F                  (idx, [1:   2]) = [  9.49998E-01 0.00010 ];
SIX_FF_P                  (idx, [1:   2]) = [  5.89219E-01 0.00027 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.32199E+00 0.00023 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.00000 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.00000 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.40074E+00 0.00028 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  1.40074E+00 0.00028 ];

% Delayed neutron parameters:

USE_DELNU                 (idx, 1)        = 1 ;
PRECURSOR_GROUPS          (idx, 1)        = 6 ;
BETA_EFF                  (idx, [1:  14]) = [  6.94460E-03 0.00543  2.13601E-04 0.02994  1.10916E-03 0.01318  1.09790E-03 0.01301  3.16442E-03 0.00807  1.01616E-03 0.01487  3.43356E-04 0.02365 ];
BETA_ZERO                 (idx, [1:  14]) = [  6.98826E-03 0.00013  2.02989E-04 0.00094  1.11393E-03 0.00041  1.09561E-03 0.00028  3.20472E-03 0.00012  1.02748E-03 0.00090  3.43529E-04 0.00042 ];
DECAY_CONSTANT            (idx, [1:  14]) = [  8.01167E-01 0.01208  1.24907E-02 0.00000  3.16819E-02 0.00019  1.10064E-01 0.00025  3.20204E-01 0.00020  1.34596E+00 0.00016  8.86763E+00 0.00132 ];

% Parameters for group constant generation

GC_UNI                    (idx, 1)        = 0 ;
GC_SYM                    (idx, 1)        = 0 ;
GC_NE                     (idx, 1)        = 2 ;
GC_BOUNDS                 (idx, [1:   3]) = [  2.00000E+01  6.25000E-07  1.00000E-11 ];
GC_REMXS_INCLUDE_MULT     (idx, 1)        = 1 ;

% Few-group cross sections:

FLUX                      (idx, [1:   6]) = [  4.13037E+01 0.00020  3.60533E+01 0.00024  5.25042E+00 0.00031 ];
LEAK                      (idx, [1:   6]) = [  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000 ];
TOTXS                     (idx, [1:   6]) = [  6.62625E-01 0.00010  5.60429E-01 0.00007  1.36434E+00 0.00013 ];
FISSXS                    (idx, [1:   6]) = [  1.37777E-02 0.00027  3.73827E-03 0.00030  8.27151E-02 0.00025 ];
CAPTXS                    (idx, [1:   6]) = [  1.04342E-02 0.00025  7.68200E-03 0.00039  2.93327E-02 0.00019 ];
ABSXS                     (idx, [1:   6]) = [  2.42119E-02 0.00020  1.14203E-02 0.00030  1.12048E-01 0.00023 ];
RABSXS                    (idx, [1:   6]) = [  2.41727E-02 0.00020  1.13754E-02 0.00030  1.12048E-01 0.00023 ];
ELAXS                     (idx, [1:   6]) = [  6.29020E-01 0.00010  5.38248E-01 0.00008  1.25229E+00 0.00014 ];
INELAXS                   (idx, [1:   6]) = [  9.39339E-03 0.00028  1.07614E-02 0.00027  6.54001E-15 0.03607 ];
SCATTXS                   (idx, [1:   6]) = [  6.38413E-01 0.00010  5.49009E-01 0.00007  1.25229E+00 0.00014 ];
SCATTPRODXS               (idx, [1:   6]) = [  6.38453E-01 0.00010  5.49054E-01 0.00007  1.25229E+00 0.00014 ];
N2NXS                     (idx, [1:   6]) = [  3.91986E-05 0.00360  4.49073E-05 0.00360  0.00000E+00 0.00000 ];
REMXS                     (idx, [1:   6]) = [  2.41727E-02 0.00020  2.80095E-02 0.00017  1.14247E-01 0.00024 ];
NUBAR                     (idx, [1:   6]) = [  2.45817E+00 0.00001  2.52734E+00 0.00003  2.43670E+00 0.00000 ];
NSF                       (idx, [1:   6]) = [  3.38678E-02 0.00027  9.44785E-03 0.00029  2.01552E-01 0.00025 ];
RECIPVEL                  (idx, [1:   6]) = [  3.40717E-07 0.00037  5.53935E-08 0.00030  2.29984E-06 0.00012 ];
FISSE                     (idx, [1:   6]) = [  2.02279E+02 0.00000  2.03103E+02 0.00000  2.02023E+02 0.00000 ];

% Fission spectra:

CHI                       (idx, [1:   4]) = [  1.00000E+00 0.00000  0.00000E+00 0.00000 ];
CHIP                      (idx, [1:   4]) = [  1.00000E+00 0.00000  0.00000E+00 0.00000 ];
CHID                      (idx, [1:   4]) = [  1.00000E+00 0.00000  0.00000E+00 0.00000 ];

% Group-transfer probabilities and cross sections:

GTRANSFP                  (idx, [1:   8]) = [  9.69702E-01 0.00001  1.75660E-03 0.00296  3.02983E-02 0.00025  9.98243E-01 0.00001 ];
GTRANSFXS                 (idx, [1:   8]) = [  5.32375E-01 0.00007  2.19967E-03 0.00295  1.66341E-02 0.00028  1.25009E+00 0.00014 ];

% Group-production probabilities and cross sections:

GPRODP                    (idx, [1:   8]) = [  9.69783E-01 0.00001  1.75660E-03 0.00296  3.02983E-02 0.00025  9.98243E-01 0.00001 ];
GPRODXS                   (idx, [1:   8]) = [  5.32420E-01 0.00007  2.19967E-03 0.00295  1.66341E-02 0.00028  1.25009E+00 0.00014 ];

% Diffusion parameters:

DIFFAREA                  (idx, [1:   6]) = [  5.11024E+01 0.00044  3.48542E+01 0.00045  3.12537E+00 0.00117 ];
DIFFCOEF                  (idx, [1:   6]) = [  1.23527E+00 0.00046  9.76225E-01 0.00043  3.57047E-01 0.00115 ];
TRANSPXS                  (idx, [1:   6]) = [  2.69903E-01 0.00046  3.41514E-01 0.00043  9.34825E-01 0.00115 ];
MUBAR                     (idx, [1:   6]) = [  6.15148E-01 0.00033  3.98747E-01 0.00066  3.42958E-01 0.00256 ];

% Material buckling:

MAT_BUCKLING              (idx, [1:   2]) = [  7.84971E-03 0.00063 ];

% Leakage estimate of diffusion coefficient:

LEAK_DIFFCOEF             (idx, [1:   6]) = [  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000 ];

% PN scattering cross sections:

SCATT0                    (idx, [1:   6]) = [  6.38419E-01 0.00010  5.49011E-01 0.00008  1.25231E+00 0.00015 ];
SCATT1                    (idx, [1:   6]) = [  2.56640E-01 0.00012  2.43897E-01 0.00012  3.44141E-01 0.00028 ];
SCATT2                    (idx, [1:   6]) = [  9.56691E-02 0.00020  9.64832E-02 0.00020  9.00787E-02 0.00079 ];
SCATT3                    (idx, [1:   6]) = [  1.03970E-02 0.00156  7.80132E-03 0.00216  2.82198E-02 0.00211 ];
SCATT4                    (idx, [1:   6]) = [ -9.15480E-03 0.00156 -9.80648E-03 0.00148 -4.67956E-03 0.01108 ];
SCATT5                    (idx, [1:   6]) = [  1.08561E-03 0.01150  4.52783E-04 0.02786  5.43115E-03 0.00844 ];

% P1 diffusion parameters:

P1_TRANSPXS               (idx, [1:   6]) = [  4.05986E-01 0.00013  3.16533E-01 0.00009  1.02020E+00 0.00016 ];
P1_DIFFCOEF               (idx, [1:   6]) = [  8.21061E-01 0.00013  1.05309E+00 0.00009  3.26742E-01 0.00016 ];
P1_MUBAR                  (idx, [1:   6]) = [  4.01994E-01 0.00009  4.44247E-01 0.00008  2.74805E-01 0.00025 ];

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

ADFS                      (idx, [1:  16]) = [  9.94160E-01 0.00025  1.04541E+00 0.00042  9.93755E-01 0.00025  1.04615E+00 0.00041  9.93801E-01 0.00024  1.04541E+00 0.00041  9.93787E-01 0.00025  1.04567E+00 0.00043 ];
ADFC                      (idx, [1:  16]) = [  9.88974E-01 0.00053  1.08847E+00 0.00075  9.89312E-01 0.00053  1.08823E+00 0.00076  9.88838E-01 0.00051  1.08947E+00 0.00073  9.89381E-01 0.00054  1.08941E+00 0.00075 ];

