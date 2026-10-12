.class public final Lcom/google/android/gms/nearby/connection/AdvertisingOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/nearby/connection/AdvertisingOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzA:I

.field private zzB:[B

.field private zzC:Z

.field private zzD:I

.field private zza:Lcom/google/android/gms/nearby/connection/Strategy;

.field private zzb:Z

.field private zzc:Z

.field private zzd:Z

.field private zze:Z

.field private zzf:[B

.field private zzg:Z

.field private zzh:Landroid/os/ParcelUuid;

.field private zzi:Z

.field private zzj:Z

.field private zzk:Z

.field private zzl:Z

.field private zzm:Z

.field private zzn:Z

.field private zzo:I

.field private zzp:I

.field private zzq:[B

.field private zzr:J

.field private zzs:[Lcom/google/android/gms/nearby/connection/zzw;

.field private zzt:Z

.field private zzu:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzv:Z

.field private zzw:Z

.field private zzx:[I

.field private zzy:[I

.field private zzz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/connection/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/connection/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzd:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zze:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzm:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzn:Z

    iput v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzo:I

    iput v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzp:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzr:J

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzt:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzu:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzv:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzw:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzz:Z

    iput v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzA:I

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzC:Z

    iput v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzD:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/nearby/connection/Strategy;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzd:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zze:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzm:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzn:Z

    iput v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzo:I

    iput v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzp:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzr:J

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzt:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzu:Z

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzv:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzw:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzz:Z

    iput v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzA:I

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzC:Z

    iput v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzD:I

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zza:Lcom/google/android/gms/nearby/connection/Strategy;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/nearby/connection/Strategy;ZZZZ[BZLandroid/os/ParcelUuid;ZZZZZZII[BJ[Lcom/google/android/gms/nearby/connection/zzw;ZZZZ[I[IZI[BZI)V
    .locals 3

    move-object v0, p0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zza:Lcom/google/android/gms/nearby/connection/Strategy;

    move v1, p2

    iput-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzb:Z

    move v1, p3

    iput-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzc:Z

    move v1, p4

    iput-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzd:Z

    move v1, p5

    iput-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zze:Z

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzf:[B

    move v1, p7

    iput-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzg:Z

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzh:Landroid/os/ParcelUuid;

    move v1, p9

    iput-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi:Z

    move v1, p10

    iput-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk:Z

    move v1, p12

    iput-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzm:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzn:Z

    move/from16 v1, p15

    iput v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzo:I

    move/from16 v1, p16

    iput v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzp:I

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzq:[B

    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzr:J

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzs:[Lcom/google/android/gms/nearby/connection/zzw;

    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzt:Z

    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzu:Z

    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzv:Z

    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzw:Z

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzx:[I

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzy:[I

    move/from16 v1, p27

    iput-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzz:Z

    move/from16 v1, p28

    iput v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzA:I

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzB:[B

    move/from16 v1, p30

    iput-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzC:Z

    move/from16 v1, p31

    iput v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzD:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/nearby/connection/zza;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzb:Z

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzc:Z

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzd:Z

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zze:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzg:Z

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi:Z

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj:Z

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzm:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzn:Z

    iput v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzo:I

    iput v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzp:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzr:J

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzt:Z

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzu:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzv:Z

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzw:Z

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzz:Z

    iput v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzA:I

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzC:Z

    iput v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzD:I

    return-void
.end method

.method static bridge synthetic zzA(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzr:J

    return-void
.end method

.method static bridge synthetic zzB(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzg:Z

    return-void
.end method

.method static bridge synthetic zzC(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzf:[B

    return-void
.end method

.method static bridge synthetic zzD(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzA:I

    return-void
.end method

.method static bridge synthetic zzE(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzq:[B

    return-void
.end method

.method static bridge synthetic zzF(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Lcom/google/android/gms/nearby/connection/Strategy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zza:Lcom/google/android/gms/nearby/connection/Strategy;

    return-void
.end method

.method static bridge synthetic zzG(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;[I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzy:[I

    return-void
.end method

.method static bridge synthetic zzH(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzw:Z

    return-void
.end method

.method static bridge synthetic zzI(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzo:I

    return-void
.end method

.method static bridge synthetic zzJ(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzp:I

    return-void
.end method

.method static bridge synthetic zzK(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;[Lcom/google/android/gms/nearby/connection/zzw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzs:[Lcom/google/android/gms/nearby/connection/zzw;

    return-void
.end method

.method static bridge synthetic zzL(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzC:Z

    return p0
.end method

.method static bridge synthetic zzM(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzb:Z

    return p0
.end method

.method static bridge synthetic zzN(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzu:Z

    return p0
.end method

.method static bridge synthetic zzO(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zze:Z

    return p0
.end method

.method static bridge synthetic zzP(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzd:Z

    return p0
.end method

.method static bridge synthetic zzQ(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl:Z

    return p0
.end method

.method static bridge synthetic zzR(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj:Z

    return p0
.end method

.method static bridge synthetic zzS(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzt:Z

    return p0
.end method

.method static bridge synthetic zzT(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzz:Z

    return p0
.end method

.method static bridge synthetic zzU(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzn:Z

    return p0
.end method

.method static bridge synthetic zzV(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzm:Z

    return p0
.end method

.method static bridge synthetic zzW(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzv:Z

    return p0
.end method

.method static bridge synthetic zzX(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk:Z

    return p0
.end method

.method static bridge synthetic zzY(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi:Z

    return p0
.end method

.method static bridge synthetic zzZ(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzc:Z

    return p0
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzD:I

    return p0
.end method

.method static bridge synthetic zzaa(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzg:Z

    return p0
.end method

.method static bridge synthetic zzab(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzw:Z

    return p0
.end method

.method static bridge synthetic zzac(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzB:[B

    return-object p0
.end method

.method static bridge synthetic zzad(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzf:[B

    return-object p0
.end method

.method static bridge synthetic zzae(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzq:[B

    return-object p0
.end method

.method static bridge synthetic zzaf(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzx:[I

    return-object p0
.end method

.method static bridge synthetic zzag(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzy:[I

    return-object p0
.end method

.method static bridge synthetic zzah(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)[Lcom/google/android/gms/nearby/connection/zzw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzs:[Lcom/google/android/gms/nearby/connection/zzw;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzA:I

    return p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzo:I

    return p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzp:I

    return p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzr:J

    return-wide v0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Landroid/os/ParcelUuid;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzh:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Lcom/google/android/gms/nearby/connection/Strategy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zza:Lcom/google/android/gms/nearby/connection/Strategy;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;[I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzx:[I

    return-void
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzC:Z

    return-void
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzb:Z

    return-void
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzD:I

    return-void
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzB:[B

    return-void
.end method

.method static bridge synthetic zzm(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzu:Z

    return-void
.end method

.method static bridge synthetic zzn(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zze:Z

    return-void
.end method

.method static bridge synthetic zzo(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzd:Z

    return-void
.end method

.method static bridge synthetic zzp(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl:Z

    return-void
.end method

.method static bridge synthetic zzq(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj:Z

    return-void
.end method

.method static bridge synthetic zzr(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzt:Z

    return-void
.end method

.method static bridge synthetic zzs(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzz:Z

    return-void
.end method

.method static bridge synthetic zzt(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzn:Z

    return-void
.end method

.method static bridge synthetic zzu(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzm:Z

    return-void
.end method

.method static bridge synthetic zzv(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzv:Z

    return-void
.end method

.method static bridge synthetic zzw(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk:Z

    return-void
.end method

.method static bridge synthetic zzx(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi:Z

    return-void
.end method

.method static bridge synthetic zzy(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzc:Z

    return-void
.end method

.method static bridge synthetic zzz(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;Landroid/os/ParcelUuid;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzh:Landroid/os/ParcelUuid;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zza:Lcom/google/android/gms/nearby/connection/Strategy;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zza:Lcom/google/android/gms/nearby/connection/Strategy;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzb:Z

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzb:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzc:Z

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzc:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzd:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzd:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zze:Z

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zze:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzf:[B

    iget-object v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzf:[B

    .line 8
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzg:Z

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzg:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzh:Landroid/os/ParcelUuid;

    iget-object v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzh:Landroid/os/ParcelUuid;

    .line 10
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi:Z

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj:Z

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk:Z

    .line 13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl:Z

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzm:Z

    .line 15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzm:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzn:Z

    .line 16
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzn:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzo:I

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzo:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzp:I

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzq:[B

    iget-object v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzq:[B

    .line 19
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzr:J

    .line 20
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzr:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzs:[Lcom/google/android/gms/nearby/connection/zzw;

    iget-object v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzs:[Lcom/google/android/gms/nearby/connection/zzw;

    .line 21
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzt:Z

    .line 22
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzt:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzu:Z

    .line 23
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzu:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzv:Z

    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzv:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzw:Z

    .line 25
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzw:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzx:[I

    iget-object v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzx:[I

    .line 26
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzy:[I

    iget-object v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzy:[I

    .line 27
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzz:Z

    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzz:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 29
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzA:I

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzA:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzB:[B

    iget-object v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzB:[B

    .line 31
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzC:Z

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzC:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzD:I

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p1, p1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzD:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getConnectionType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzD:I

    return v0
.end method

.method public getDisruptiveUpgrade()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzu:Z

    return v0
.end method

.method public getLowPower()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzg:Z

    return v0
.end method

.method public getStrategy()Lcom/google/android/gms/nearby/connection/Strategy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zza:Lcom/google/android/gms/nearby/connection/Strategy;

    return-object v0
.end method

.method public hashCode()I
    .locals 33

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zza:Lcom/google/android/gms/nearby/connection/Strategy;

    iget-boolean v2, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzb:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzc:Z

    .line 2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzd:Z

    .line 3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zze:Z

    .line 4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzf:[B

    .line 5
    invoke-static {v6}, Ljava/util/Arrays;->hashCode([B)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v7, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzg:Z

    .line 6
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzh:Landroid/os/ParcelUuid;

    iget-boolean v9, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi:Z

    .line 7
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v10, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj:Z

    .line 8
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v11, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk:Z

    .line 9
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v12, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl:Z

    .line 10
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v13, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzm:Z

    .line 11
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-boolean v14, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzn:Z

    .line 12
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget v15, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzo:I

    .line 13
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v31, v1

    iget v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzp:I

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzq:[B

    .line 15
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v32, v2

    iget-wide v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzr:J

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    iget-object v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzs:[Lcom/google/android/gms/nearby/connection/zzw;

    .line 17
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzt:Z

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    iget-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzu:Z

    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    iget-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzv:Z

    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    iget-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzw:Z

    .line 21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    iget-object v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzx:[I

    .line 22
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    iget-object v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzy:[I

    .line 23
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    iget-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzz:Z

    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    iget v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzA:I

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    iget-object v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzB:[B

    move-object/from16 v28, v1

    iget-boolean v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzC:Z

    .line 26
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    iget v1, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzD:I

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    filled-new-array/range {v1 .. v30}, [Ljava/lang/Object;

    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 31

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zza:Lcom/google/android/gms/nearby/connection/Strategy;

    iget-boolean v3, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzb:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzc:Z

    .line 2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzd:Z

    .line 3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zze:Z

    .line 4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzf:[B

    if-nez v7, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v7}, Lcom/google/android/gms/nearby/messages/internal/zzc;->zzb([B)Ljava/lang/String;

    move-result-object v7

    .line 4
    :goto_0
    iget-boolean v9, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzg:Z

    .line 6
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzh:Landroid/os/ParcelUuid;

    iget-boolean v11, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi:Z

    .line 7
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v12, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj:Z

    .line 8
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v13, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk:Z

    .line 9
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-boolean v14, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl:Z

    .line 10
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-boolean v15, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzm:Z

    .line 11
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iget-boolean v8, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzn:Z

    .line 12
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    iget v8, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzo:I

    .line 13
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v8, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzp:I

    .line 14
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget-object v8, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzq:[B

    if-nez v8, :cond_1

    const-string v8, "null"

    goto :goto_1

    .line 15
    :cond_1
    invoke-static {v8}, Lcom/google/android/gms/nearby/messages/internal/zzc;->zzb([B)Ljava/lang/String;

    move-result-object v8

    :goto_1
    move-object/from16 v20, v8

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    .line 14
    iget-wide v14, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzr:J

    .line 16
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    iget-object v8, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzs:[Lcom/google/android/gms/nearby/connection/zzw;

    .line 17
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    iget-boolean v8, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzt:Z

    .line 18
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    iget-boolean v8, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzu:Z

    .line 19
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    iget-boolean v8, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzw:Z

    .line 20
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    iget-object v8, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzB:[B

    if-nez v8, :cond_2

    const/16 v30, 0x0

    goto :goto_2

    .line 21
    :cond_2
    invoke-static {v8}, Lcom/google/android/gms/nearby/messages/internal/zzc;->zzb([B)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v30, v8

    .line 20
    :goto_2
    iget-boolean v8, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzC:Z

    .line 22
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    iget v8, v0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzD:I

    .line 23
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v23

    move-object/from16 v20, v24

    move-object/from16 v21, v27

    move-object/from16 v22, v28

    move-object/from16 v23, v29

    move-object/from16 v24, v30

    filled-new-array/range {v2 .. v26}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AdvertisingOptions{strategy: %s, autoUpgradeBandwidth: %s, enforceTopologyConstraints: %s, enableBluetooth: %s, enableBle: %s, nearbyNotificationsBeaconData: %s, lowPower: %s, fastAdvertisementServiceUuid: %s, enableWifiLan: %s, enableNfc: %s, enableWifiAware: %s, enableBluetoothListening: %s, enableWebRtcListening: %s, enableUwbRanging: %s, uwbChannel: %d, uwbPreambleIndex: %d, remoteUwbAddress: %s, flowId: %d, uwbSenderInfo: %s, enableOutOfBandConnection: %s, disruptiveUpgrade: %s,useStableIdentifiers: %s,deviceInfo: %s,allowGattConnections: %s,connectionType: %d}"

    .line 24
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->getStrategy()Lcom/google/android/gms/nearby/connection/Strategy;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzb:Z

    .line 3
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzc:Z

    .line 4
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzd:Z

    .line 5
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zze:Z

    .line 6
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzf:[B

    .line 7
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->getLowPower()Z

    move-result v2

    .line 8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzh:Landroid/os/ParcelUuid;

    .line 9
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzi:Z

    .line 10
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzj:Z

    .line 11
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzk:Z

    .line 12
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzl:Z

    .line 13
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzm:Z

    .line 14
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xe

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzn:Z

    .line 15
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xf

    iget v2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzo:I

    .line 16
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v1, 0x10

    iget v2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzp:I

    .line 17
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzq:[B

    .line 18
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    const/16 v1, 0x12

    iget-wide v4, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzr:J

    .line 19
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzs:[Lcom/google/android/gms/nearby/connection/zzw;

    .line 20
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/16 p2, 0x14

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzt:Z

    .line 21
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x15

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->getDisruptiveUpgrade()Z

    move-result v1

    .line 22
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x16

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzv:Z

    .line 23
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x17

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzw:Z

    .line 24
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x18

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzx:[I

    .line 25
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntArray(Landroid/os/Parcel;I[IZ)V

    const/16 p2, 0x19

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzy:[I

    .line 26
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntArray(Landroid/os/Parcel;I[IZ)V

    const/16 p2, 0x1a

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzz:Z

    .line 27
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x1b

    iget v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzA:I

    .line 28
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 p2, 0x1c

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzB:[B

    .line 29
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    const/16 p2, 0x1d

    iget-boolean v1, p0, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->zzC:Z

    .line 30
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x1e

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions;->getConnectionType()I

    move-result v1

    .line 31
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 32
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
