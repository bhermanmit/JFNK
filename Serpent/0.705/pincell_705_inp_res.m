
% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 1.1.16' ;
TITLE                     (idx, [1:  8])  = 'Untitled' ;
DATE                      (idx, [1: 24])  = 'Mon Nov 14 21:07:12 2011' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 1000 ;
SKIP                      (idx, 1)        = 20 ;
SRC_NORM_MODE             (idx, 1)        = 1 ;
SEED                      (idx, 1)        = 1321322832 ;
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
DT_FRAC                   (idx, 1)        = 9.73493E-01 ;
DT_EFF                    (idx, 1)        = 7.56882E-01 ;
MIN_MACROXS               (idx, 1)        = 1.79808E-01 ;

% Run statistics:

TOT_CPU_TIME              (idx, 1)        = 1.52263E+01 ;
RUNNING_TIME              (idx, 1)        = 1.52993E+01 ;
CPU_USAGE                 (idx, 1)        = 0.99523 ;
INIT_TIME                 (idx, 1)        = 2.35833E-02 ;
TRANSPORT_CYCLE_TIME      (idx, 1)        = 1.52754E+01 ;
BURNUP_CYCLE_TIME         (idx, 1)        = 0.00000E+00 ;
PROCESS_TIME              (idx, 1)        = 3.33332E-04 ;
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

COLLISIONS                (idx, 1)        = 268733274 ;
FISSION_FRACTION          (idx, 1)        = 2.09019E-02 ;
CAPTURE_FRACTION          (idx, 1)        = 1.63722E-02 ;
ELASTIC_FRACTION          (idx, 1)        = 7.26601E-01 ;
INELASTIC_FRACTION        (idx, 1)        = 1.53571E-02 ;
ALPHA_FRACTION            (idx, 1)        = 0.00000E+00 ;
BOUND_SCATTERING_FRACTION (idx, 1)        = 2.20705E-01 ;
NXN_FRACTION              (idx, 1)        = 6.22290E-05 ;
UNKNOWN_FRACTION          (idx, 1)        = 0.00000E+00 ;
VIRTUAL_FRACTION          (idx, 1)        = 2.43118E-01 ;

FREEGAS_FRACTION          (idx, 1)        = 6.49383E-01 ;
TOTAL_ELASTIC_FRACTION    (idx, 1)        = 9.47306E-01 ;
FISSILE_FISSION_FRACTION  (idx, 1)        = 9.42136E-01 ;
LEAKAGE_REACTIONS         (idx, 1)        = 0 ;

REA_SAMPLING_EFF          (idx, 1)        = 6.52395E-01 ;

% Slowing-down and thermalization:

COL_SLOW                  (idx, [1:   2]) = [  2.32466E+01 0.00012 ];
COL_THERM                 (idx, [1:   2]) = [  1.13917E+01 0.00038 ];
COL_TOT                   (idx, [1:   2]) = [  2.68312E+01 0.00017 ];
SLOW_TIME                 (idx, [1:   2]) = [  3.09182E-06 0.00032 ];
THERM_TIME                (idx, [1:   2]) = [  2.06080E-05 0.00042 ];
SLOW_DIST                 (idx, [1:   2]) = [  1.60462E+01 0.00025 ];
THERM_DIST                (idx, [1:   2]) = [  3.85374E+00 0.00030 ];
THERM_FRAC                (idx, [1:   2]) = [  5.64555E-01 0.00028 ];

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

ENTROPY_X                 (idx, [1:   2]) = [  7.48166E-01 0.00019 ];
ENTROPY_Y                 (idx, [1:   2]) = [  7.48250E-01 0.00019 ];
ENTROPY_Z                 (idx, [1:   2]) = [  6.31075E-17 0.05033 ];
ENTROPY_TOT               (idx, [1:   2]) = [  7.34832E-01 0.00010 ];

% Fission source centre:

SOURCE_X0                 (idx, [1:   2]) = [ -6.86052E-05 1.30571 ];
SOURCE_Y0                 (idx, [1:   2]) = [ -1.26197E-04 0.71659 ];
SOURCE_Z0                 (idx, [1:   2]) = [ -4.49768E+01 0.01967 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   2]) = [  1.38162E+00 0.00029 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.38154E+00 0.00014 ];
COL_KEFF                  (idx, [1:   2]) = [  1.38110E+00 0.00033 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.38154E+00 0.00014 ];
ABS_KINF                  (idx, [1:   2]) = [  1.38154E+00 0.00014 ];
ABS_GC_KEFF               (idx, [1:   2]) = [  1.38154E+00 0.00014 ];
ABS_GC_KINF               (idx, [1:   2]) = [  1.38154E+00 0.00014 ];
IMPL_ALPHA_EIG            (idx, [1:   2]) = [  2.77719E+04 0.00044 ];
FIXED_ALPHA_EIG           (idx, [1:   2]) = [  0.00000E+00 0.00000 ];
GEOM_ALBEDO               (idx, [1:   2]) = [  1.00000E+00 0.00000 ];

% Normalized total reaction rates:

TOT_POWER                 (idx, [1:   2]) = [  1.81741E-11 0.00014 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.37919E+00 0.00014 ];
TOT_FISSRATE              (idx, [1:   2]) = [  5.60728E-01 0.00015 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.00000E+00 0.00000 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.00000 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.00000 ];
TOT_SRCRATE               (idx, [1:   2]) = [ -9.99417E-05 4.18542 ];
TOT_FLUX                  (idx, [1:   2]) = [  4.39549E+01 0.00021 ];
TOT_RR                    (idx, [1:   2]) = [  2.68373E+01 0.00017 ];
TOT_SOLU_ABSRATE          (idx, [1:   2]) = [  0.00000E+00 0.00000 ];

TOT_FMASS                 (idx, 1)        = 4.83199E-03 ;
TOT_POWDENS               (idx, [1:   2]) = [  3.76120E-15 0.00014 ];


% Point-kinetic parameters:

ANA_PROMPT_LIFETIME       (idx, [1:   2]) = [  1.37090E-05 0.00044 ];
IMPL_PROMPT_LIFETIME      (idx, [1:   2]) = [  1.37385E-05 0.00030 ];
ANA_REPROD_TIME           (idx, [1:   2]) = [  9.92290E-06 0.00046 ];
IMPL_REPROD_TIME          (idx, [1:   2]) = [  9.94432E-06 0.00026 ];
DELAYED_EMTIME            (idx, [1:   2]) = [  1.04444E+01 0.00899 ];

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.89306E+00 0.00023 ];
SIX_FF_F                  (idx, [1:   2]) = [  9.53877E-01 0.00009 ];
SIX_FF_P                  (idx, [1:   2]) = [  5.63903E-01 0.00028 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.35689E+00 0.00027 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.00000 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.00000 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.38158E+00 0.00028 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  1.38158E+00 0.00028 ];

% Delayed neutron parameters:

USE_DELNU                 (idx, 1)        = 1 ;
PRECURSOR_GROUPS          (idx, 1)        = 6 ;
BETA_EFF                  (idx, [1:  14]) = [  6.81613E-03 0.00544  2.03138E-04 0.03104  1.08809E-03 0.01375  1.07629E-03 0.01362  3.08847E-03 0.00805  1.01412E-03 0.01420  3.46024E-04 0.02358 ];
BETA_ZERO                 (idx, [1:  14]) = [  7.02380E-03 0.00013  2.03223E-04 0.00097  1.11770E-03 0.00042  1.09993E-03 0.00029  3.22071E-03 0.00013  1.03643E-03 0.00092  3.45803E-04 0.00043 ];
DECAY_CONSTANT            (idx, [1:  14]) = [  8.15922E-01 0.01223  1.24907E-02 0.00000  3.16725E-02 0.00020  1.10081E-01 0.00025  3.20466E-01 0.00021  1.34566E+00 0.00017  8.88560E+00 0.00141 ];

% Parameters for group constant generation

GC_UNI                    (idx, 1)        = 0 ;
GC_SYM                    (idx, 1)        = 0 ;
GC_NE                     (idx, 1)        = 2 ;
GC_BOUNDS                 (idx, [1:   3]) = [  2.00000E+01  6.25000E-07  1.00000E-11 ];
GC_REMXS_INCLUDE_MULT     (idx, 1)        = 1 ;

% Few-group cross sections:

FLUX                      (idx, [1:   6]) = [  4.39549E+01 0.00021  3.88457E+01 0.00025  5.10920E+00 0.00032 ];
LEAK                      (idx, [1:   6]) = [  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000 ];
TOTXS                     (idx, [1:   6]) = [  6.10572E-01 0.00010  5.25964E-01 0.00007  1.25381E+00 0.00013 ];
FISSXS                    (idx, [1:   6]) = [  1.27576E-02 0.00028  3.69228E-03 0.00028  8.16809E-02 0.00026 ];
CAPTXS                    (idx, [1:   6]) = [  9.99406E-03 0.00025  7.55610E-03 0.00037  2.85295E-02 0.00020 ];
ABSXS                     (idx, [1:   6]) = [  2.27516E-02 0.00021  1.12484E-02 0.00028  1.10210E-01 0.00024 ];
RABSXS                    (idx, [1:   6]) = [  2.27135E-02 0.00021  1.12052E-02 0.00029  1.10210E-01 0.00024 ];
ELAXS                     (idx, [1:   6]) = [  5.78404E-01 0.00010  5.04061E-01 0.00008  1.14360E+00 0.00014 ];
INELAXS                   (idx, [1:   6]) = [  9.41653E-03 0.00027  1.06551E-02 0.00026  6.24392E-15 0.03187 ];
SCATTXS                   (idx, [1:   6]) = [  5.87820E-01 0.00010  5.14716E-01 0.00007  1.14360E+00 0.00014 ];
SCATTPRODXS               (idx, [1:   6]) = [  5.87858E-01 0.00010  5.14759E-01 0.00007  1.14360E+00 0.00014 ];
N2NXS                     (idx, [1:   6]) = [  3.86770E-05 0.00366  4.37643E-05 0.00366  0.00000E+00 0.00000 ];
REMXS                     (idx, [1:   6]) = [  2.27135E-02 0.00021  2.59930E-02 0.00017  1.12417E-01 0.00024 ];
NUBAR                     (idx, [1:   6]) = [  2.45965E+00 0.00001  2.52642E+00 0.00003  2.43670E+00 0.00000 ];
NSF                       (idx, [1:   6]) = [  3.13791E-02 0.00028  9.32822E-03 0.00028  1.99032E-01 0.00026 ];
RECIPVEL                  (idx, [1:   6]) = [  3.12043E-07 0.00038  5.43850E-08 0.00030  2.27091E-06 0.00013 ];
FISSE                     (idx, [1:   6]) = [  2.02297E+02 0.00000  2.03095E+02 0.00000  2.02023E+02 0.00000 ];

% Fission spectra:

CHI                       (idx, [1:   4]) = [  1.00000E+00 0.00000  0.00000E+00 0.00000 ];
CHIP                      (idx, [1:   4]) = [  1.00000E+00 0.00000  0.00000E+00 0.00000 ];
CHID                      (idx, [1:   4]) = [  1.00000E+00 0.00000  0.00000E+00 0.00000 ];

% Group-transfer probabilities and cross sections:

GTRANSFP                  (idx, [1:   8]) = [  9.71270E-01 0.00001  1.92972E-03 0.00307  2.87300E-02 0.00026  9.98070E-01 0.00001 ];
GTRANSFXS                 (idx, [1:   8]) = [  4.99928E-01 0.00007  2.20667E-03 0.00305  1.47878E-02 0.00029  1.14139E+00 0.00014 ];

% Group-production probabilities and cross sections:

GPRODP                    (idx, [1:   8]) = [  9.71354E-01 0.00001  1.92972E-03 0.00307  2.87300E-02 0.00026  9.98070E-01 0.00001 ];
GPRODXS                   (idx, [1:   8]) = [  4.99971E-01 0.00007  2.20667E-03 0.00305  1.47878E-02 0.00029  1.14139E+00 0.00014 ];

% Diffusion parameters:

DIFFAREA                  (idx, [1:   6]) = [  5.72182E+01 0.00045  3.95313E+01 0.00045  3.42084E+00 0.00127 ];
DIFFCOEF                  (idx, [1:   6]) = [  1.29961E+00 0.00048  1.02752E+00 0.00044  3.84532E-01 0.00123 ];
TRANSPXS                  (idx, [1:   6]) = [  2.56546E-01 0.00048  3.24469E-01 0.00044  8.68170E-01 0.00123 ];
MUBAR                     (idx, [1:   6]) = [  6.02264E-01 0.00036  3.91471E-01 0.00069  3.37193E-01 0.00281 ];

% Material buckling:

MAT_BUCKLING              (idx, [1:   2]) = [  6.66949E-03 0.00068 ];

% Leakage estimate of diffusion coefficient:

LEAK_DIFFCOEF             (idx, [1:   6]) = [  0.00000E+00 0.00000  0.00000E+00 0.00000  0.00000E+00 0.00000 ];

% PN scattering cross sections:

SCATT0                    (idx, [1:   6]) = [  5.87816E-01 0.00010  5.14713E-01 0.00008  1.14358E+00 0.00015 ];
SCATT1                    (idx, [1:   6]) = [  2.34064E-01 0.00012  2.23683E-01 0.00012  3.12985E-01 0.00030 ];
SCATT2                    (idx, [1:   6]) = [  8.78940E-02 0.00021  8.85938E-02 0.00021  8.25721E-02 0.00086 ];
SCATT3                    (idx, [1:   6]) = [  9.50039E-03 0.00161  7.34860E-03 0.00210  2.58582E-02 0.00227 ];
SCATT4                    (idx, [1:   6]) = [ -8.18650E-03 0.00167 -8.74295E-03 0.00155 -3.95721E-03 0.01286 ];
SCATT5                    (idx, [1:   6]) = [  1.04264E-03 0.01162  5.31019E-04 0.02283  4.93287E-03 0.00905 ];

% P1 diffusion parameters:

P1_TRANSPXS               (idx, [1:   6]) = [  3.76508E-01 0.00012  3.02281E-01 0.00009  9.40824E-01 0.00016 ];
P1_DIFFCOEF               (idx, [1:   6]) = [  8.85342E-01 0.00012  1.10273E+00 0.00009  3.54309E-01 0.00016 ];
P1_MUBAR                  (idx, [1:   6]) = [  3.98194E-01 0.00009  4.34578E-01 0.00009  2.73691E-01 0.00028 ];

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

ADFS                      (idx, [1:  16]) = [  9.94580E-01 0.00024  1.04521E+00 0.00043  9.94493E-01 0.00024  1.04505E+00 0.00042  9.94181E-01 0.00024  1.04498E+00 0.00044  9.94814E-01 0.00024  1.04561E+00 0.00043 ];
ADFC                      (idx, [1:  16]) = [  9.90958E-01 0.00052  1.08724E+00 0.00077  9.90552E-01 0.00053  1.08730E+00 0.00076  9.90712E-01 0.00053  1.08706E+00 0.00079  9.90186E-01 0.00051  1.08725E+00 0.00081 ];

