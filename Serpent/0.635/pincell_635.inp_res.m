
% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 1.1.16' ;
TITLE                     (idx, [1:  8])  = 'Untitled' ;
DATE                      (idx, [1: 24])  = 'Mon Nov 14 21:04:56 2011' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 1000 ;
SKIP                      (idx, 1)        = 20 ;
SRC_NORM_MODE             (idx, 1)        = 1 ;
SEED                      (idx, 1)        = 1321322696 ;
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
DT_FRAC                   (idx, 1)        = 9.73091E-01 ;
DT_EFF                    (idx, 1)        = 7.66274E-01 ;
MIN_MACROXS               (idx, 1)        = 1.79808E-01 ;

% Run statistics:

TOT_CPU_TIME              (idx, 1)        = 1.49778E+01 ;
RUNNING_TIME              (idx, 1)        = 1.56769E+01 ;
CPU_USAGE                 (idx, 1)        = 0.95541 ;
INIT_TIME                 (idx, 1)        = 2.29833E-02 ;
TRANSPORT_CYCLE_TIME      (idx, 1)        = 1.56536E+01 ;
BURNUP_CYCLE_TIME         (idx, 1)        = 0.00000E+00 ;
PROCESS_TIME              (idx, 1)        = 3.33335E-04 ;
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

COLLISIONS                (idx, 1)        = 263960079 ;
FISSION_FRACTION          (idx, 1)        = 2.09241E-02 ;
CAPTURE_FRACTION          (idx, 1)        = 1.70291E-02 ;
ELASTIC_FRACTION          (idx, 1)        = 7.47616E-01 ;
INELASTIC_FRACTION        (idx, 1)        = 1.67138E-02 ;
ALPHA_FRACTION            (idx, 1)        = 0.00000E+00 ;
BOUND_SCATTERING_FRACTION (idx, 1)        = 1.97649E-01 ;
NXN_FRACTION              (idx, 1)        = 6.83134E-05 ;
UNKNOWN_FRACTION          (idx, 1)        = 0.00000E+00 ;
VIRTUAL_FRACTION          (idx, 1)        = 2.33726E-01 ;

FREEGAS_FRACTION          (idx, 1)        = 6.30855E-01 ;
TOTAL_ELASTIC_FRACTION    (idx, 1)        = 9.45265E-01 ;
FISSILE_FISSION_FRACTION  (idx, 1)        = 9.37855E-01 ;
LEAKAGE_REACTIONS         (idx, 1)        = 0 ;

REA_SAMPLING_EFF          (idx, 1)        = 6.44901E-01 ;

% Slowing-down and thermalization:

COL_SLOW                  (idx, [1:   2]) = [  2.37634E+01 0.00013 ];
COL_THERM                 (idx, [1:   2]) = [  1.05928E+01 0.00037 ];
COL_TOT                   (idx, [1:   2]) = [  2.63515E+01 0.00016 ];
SLOW_TIME                 (idx, [1:   2]) = [  3.39323E-06 0.00034 ];
THERM_TIME                (idx, [1:   2]) = [  2.06708E-05 0.00041 ];
SLOW_DIST                 (idx, [1:   2]) = [  1.71445E+01 0.00025 ];
THERM_DIST                (idx, [1:   2]) = [  4.03380E+00 0.00029 ];
THERM_FRAC                (idx, [1:   2]) = [  5.36857E-01 0.00030 ];

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

ENTROPY_X                 (idx, [1:   2]) = [  7.48115E-01 0.00020 ];
ENTROPY_Y                 (idx, [1:   2]) = [  7.48103E-01 0.00019 ];
ENTROPY_Z                 (idx, [1:   2]) = [  6.64711E-17 0.04802 ];
ENTROPY_TOT               (idx, [1:   2]) = [  7.34747E-01 0.00011 ];

% Fission source centre:

SOURCE_X0                 (idx, [1:   2]) = [  3.83603E-05 2.25117 ];
SOURCE_Y0                 (idx, [1:   2]) = [ -6.00734E-05 1.46655 ];
SOURCE_Z0                 (idx, [1:   2]) = [ -1.51150E+01 0.04390 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   2]) = [  1.35931E+00 0.00032 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.35894E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.35850E+00 0.00032 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.35894E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.35894E+00 0.00015 ];
ABS_GC_KEFF               (idx, [1:   2]) = [  1.35894E+00 0.00015 ];
ABS_GC_KINF               (idx, [1:   2]) = [  1.35894E+00 0.00015 ];
IMPL_ALPHA_EIG            (idx, [1:   2]) = [  2.69333E+04 0.00048 ];
FIXED_ALPHA_EIG           (idx, [1:   2]) = [  0.00000E+00 0.00000 ];
GEOM_ALBEDO               (idx, [1:   2]) = [  1.00000E+00 0.00000 ];

% Normalized total reaction rates:

TOT_POWER                 (idx, [1:   2]) = [  1.78655E-11 0.00016 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.35653E+00 0.00015 ];
TOT_FISSRATE              (idx, [1:   2]) = [  5.51153E-01 0.00016 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.00000E+00 0.00000 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.00000 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.00000 ];
TOT_SRCRATE               (idx, [1:   2]) = [ -1.31590E-04 3.56159 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.69919E+01 0.00020 ];
TOT_RR                    (idx, [1:   2]) = [  2.63586E+01 0.00017 ];
TOT_SOLU_ABSRATE          (idx, [1:   2]) = [  0.00000E+00 0.00000 ];

TOT_FMASS                 (idx, 1)        = 4.83199E-03 ;
TOT_POWDENS               (idx, [1:   2]) = [  3.69734E-15 0.00016 ];


% Point-kinetic parameters:

ANA_PROMPT_LIFETIME       (idx, [1:   2]) = [  1.32978E-05 0.00043 ];
IMPL_PROMPT_LIFETIME      (idx, [1:   2]) = [  1.33267E-05 0.00029 ];
ANA_REPROD_TIME           (idx, [1:   2]) = [  9.78338E-06 0.00046 ];
IMPL_REPROD_TIME          (idx, [1:   2]) = [  9.80673E-06 0.00024 ];
DELAYED_EMTIME            (idx, [1:   2]) = [  1.03421E+01 0.00942 ];

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.89259E+00 0.00025 ];
SIX_FF_F                  (idx, [1:   2]) = [  9.58157E-01 0.00009 ];
SIX_FF_P                  (idx, [1:   2]) = [  5.36156E-01 0.00030 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.39829E+00 0.00028 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.00000 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.00000 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.35941E+00 0.00030 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  1.35941E+00 0.00030 ];

% Delayed neutron parameters:

USE_DELNU                 (idx, 1)        = 1 ;
PRECURSOR_GROUPS          (idx, 1)        = 6 ;
BETA_EFF                  (idx, [1:  14]) = [  6.91095E-03 0.00533  1.97870E-04 0.03200  1.09514E-03 0.01353  1.07284E-03 0.01376  3.15665E-03 0.00797  1.04204E-03 0.01466  3.46414E-04 0.02348 ];
BETA_ZERO                 (idx, [1:  14]) = [  7.06271E-03 0.00013  2.02688E-04 0.00104  1.11993E-03 0.00046  1.10346E-03 0.00031  3.23797E-03 0.00013  1.04983E-03 0.00097  3.48837E-04 0.00045 ];
DECAY_CONSTANT            (idx, [1:  14]) = [  8.18174E-01 0.01242  1.24908E-02 0.00000  3.16520E-02 0.00022  1.10168E-01 0.00028  3.20617E-01 0.00022  1.34609E+00 0.00015  8.90073E+00 0.00141 ];

% Parameters for group constant generation

GC_UNI                    (idx, 1)        = 0 ;
GC_SYM                    (idx, 1)        = 0 ;
GC_NE                     (idx, 1)        = 2 ;
GC_BOUNDS                 (idx, [1:   3]) = [  2.00000E+01  6.25000E-07  1.00000E-11 ];
GC_REMXS_INCLUDE_MULT     (idx, 1)        = 1 ;

% Few-group cross sections:

FLUX                      (idx, [1:   6]) = [  4.69919E+01 0.00020  4.20460E+01 0.00023  4.94591E+00 0.00032 ];
LEAK                      (idx, [1:   6]) = [  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000 ];
TOTXS                     (idx, [1:   6]) = [  5.60924E-01 0.00009  4.92233E-01 0.00007  1.14485E+00 0.00012 ];
FISSXS                    (idx, [1:   6]) = [  1.17292E-02 0.00028  3.63575E-03 0.00027  8.05322E-02 0.00026 ];
CAPTXS                    (idx, [1:   6]) = [  9.55191E-03 0.00025  7.41642E-03 0.00037  2.77055E-02 0.00020 ];
ABSXS                     (idx, [1:   6]) = [  2.12811E-02 0.00020  1.10522E-02 0.00028  1.08238E-01 0.00024 ];
RABSXS                    (idx, [1:   6]) = [  2.12427E-02 0.00020  1.10092E-02 0.00028  1.08238E-01 0.00024 ];
ELAXS                     (idx, [1:   6]) = [  5.30230E-01 0.00009  4.70660E-01 0.00008  1.03661E+00 0.00014 ];
INELAXS                   (idx, [1:   6]) = [  9.41304E-03 0.00028  1.05204E-02 0.00027  5.34768E-15 0.03356 ];
SCATTXS                   (idx, [1:   6]) = [  5.39643E-01 0.00009  4.81180E-01 0.00007  1.03661E+00 0.00014 ];
SCATTPRODXS               (idx, [1:   6]) = [  5.39681E-01 0.00009  4.81224E-01 0.00007  1.03661E+00 0.00014 ];
N2NXS                     (idx, [1:   6]) = [  3.76764E-05 0.00368  4.21083E-05 0.00368  0.00000E+00 0.00000 ];
REMXS                     (idx, [1:   6]) = [  2.12427E-02 0.00020  2.40064E-02 0.00017  1.10475E-01 0.00025 ];
NUBAR                     (idx, [1:   6]) = [  2.46126E+00 0.00001  2.52525E+00 0.00003  2.43670E+00 0.00000 ];
NSF                       (idx, [1:   6]) = [  2.88687E-02 0.00027  9.18118E-03 0.00027  1.96233E-01 0.00026 ];
RECIPVEL                  (idx, [1:   6]) = [  2.83108E-07 0.00037  5.32965E-08 0.00032  2.23666E-06 0.00014 ];
FISSE                     (idx, [1:   6]) = [  2.02317E+02 0.00000  2.03084E+02 0.00000  2.02023E+02 0.00000 ];

% Fission spectra:

CHI                       (idx, [1:   4]) = [  1.00000E+00 0.00000  0.00000E+00 0.00000 ];
CHIP                      (idx, [1:   4]) = [  1.00000E+00 0.00000  0.00000E+00 0.00000 ];
CHID                      (idx, [1:   4]) = [  1.00000E+00 0.00000  0.00000E+00 0.00000 ];

% Group-transfer probabilities and cross sections:

GTRANSFP                  (idx, [1:   8]) = [  9.72989E-01 0.00001  2.15852E-03 0.00316  2.70111E-02 0.00028  9.97841E-01 0.00001 ];
GTRANSFXS                 (idx, [1:   8]) = [  4.68183E-01 0.00007  2.23744E-03 0.00315  1.29973E-02 0.00030  1.03438E+00 0.00014 ];

% Group-production probabilities and cross sections:

GPRODP                    (idx, [1:   8]) = [  9.73078E-01 0.00001  2.15852E-03 0.00316  2.70111E-02 0.00028  9.97841E-01 0.00001 ];
GPRODXS                   (idx, [1:   8]) = [  4.68226E-01 0.00007  2.23744E-03 0.00315  1.29973E-02 0.00030  1.03438E+00 0.00014 ];

% Diffusion parameters:

DIFFAREA                  (idx, [1:   6]) = [  6.44682E+01 0.00043  4.51885E+01 0.00044  3.74314E+00 0.00121 ];
DIFFCOEF                  (idx, [1:   6]) = [  1.36946E+00 0.00046  1.08479E+00 0.00042  4.13504E-01 0.00119 ];
TRANSPXS                  (idx, [1:   6]) = [  2.43455E-01 0.00046  3.07334E-01 0.00042  8.07262E-01 0.00119 ];
MUBAR                     (idx, [1:   6]) = [  5.88292E-01 0.00036  3.84262E-01 0.00069  3.25646E-01 0.00289 ];

% Material buckling:

MAT_BUCKLING              (idx, [1:   2]) = [  5.56866E-03 0.00072 ];

% Leakage estimate of diffusion coefficient:

LEAK_DIFFCOEF             (idx, [1:   6]) = [  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000 ];

% PN scattering cross sections:

SCATT0                    (idx, [1:   6]) = [  5.39638E-01 0.00009  4.81177E-01 0.00008  1.03659E+00 0.00014 ];
SCATT1                    (idx, [1:   6]) = [  2.12179E-01 0.00012  2.03951E-01 0.00012  2.82126E-01 0.00031 ];
SCATT2                    (idx, [1:   6]) = [  8.02726E-02 0.00021  8.09115E-02 0.00021  7.48419E-02 0.00091 ];
SCATT3                    (idx, [1:   6]) = [  8.69518E-03 0.00161  6.96093E-03 0.00200  2.34363E-02 0.00248 ];
SCATT4                    (idx, [1:   6]) = [ -7.28307E-03 0.00175 -7.72306E-03 0.00166 -3.54285E-03 0.01388 ];
SCATT5                    (idx, [1:   6]) = [  9.72020E-04 0.01160  5.94459E-04 0.01900  4.18152E-03 0.01081 ];

% P1 diffusion parameters:

P1_TRANSPXS               (idx, [1:   6]) = [  3.48745E-01 0.00011  2.88282E-01 0.00009  8.62725E-01 0.00016 ];
P1_DIFFCOEF               (idx, [1:   6]) = [  9.55821E-01 0.00011  1.15629E+00 0.00009  3.86383E-01 0.00016 ];
P1_MUBAR                  (idx, [1:   6]) = [  3.93189E-01 0.00009  4.23859E-01 0.00009  2.72169E-01 0.00029 ];

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

ADFS                      (idx, [1:  16]) = [  9.95545E-01 0.00024  1.04378E+00 0.00046  9.95219E-01 0.00023  1.04423E+00 0.00046  9.95752E-01 0.00025  1.04476E+00 0.00045  9.95269E-01 0.00025  1.04502E+00 0.00045 ];
ADFC                      (idx, [1:  16]) = [  9.91617E-01 0.00051  1.08344E+00 0.00085  9.91847E-01 0.00051  1.08475E+00 0.00084  9.92018E-01 0.00052  1.08356E+00 0.00081  9.91950E-01 0.00051  1.08302E+00 0.00085 ];

