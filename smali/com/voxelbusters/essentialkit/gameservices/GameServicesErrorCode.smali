.class public final enum Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

.field public static final enum ConfigurationError:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

.field public static final enum DataNotAvailable:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

.field public static final enum InvalidInput:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

.field public static final enum NetworkError:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

.field public static final enum NotAllowed:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

.field public static final enum NotAuthenticated:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

.field public static final enum NotSupported:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

.field public static final enum SystemError:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

.field public static final enum Unknown:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;


# direct methods
.method private static synthetic $values()[Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;
    .locals 9

    sget-object v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    sget-object v1, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->SystemError:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    sget-object v2, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->NetworkError:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    sget-object v3, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->NotAllowed:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    sget-object v4, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->DataNotAvailable:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    sget-object v5, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->NotSupported:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    sget-object v6, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->ConfigurationError:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    sget-object v7, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->InvalidInput:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    sget-object v8, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->NotAuthenticated:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    filled-new-array/range {v0 .. v8}, [Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    const-string v1, "SystemError"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->SystemError:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    const-string v1, "NetworkError"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->NetworkError:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    const-string v1, "NotAllowed"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->NotAllowed:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    const-string v1, "DataNotAvailable"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->DataNotAvailable:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    const-string v1, "NotSupported"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->NotSupported:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    const-string v1, "ConfigurationError"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->ConfigurationError:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    const-string v1, "InvalidInput"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->InvalidInput:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    const-string v1, "NotAuthenticated"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->NotAuthenticated:Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    invoke-static {}, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->$values()[Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    move-result-object v0

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->$VALUES:[Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;
    .locals 1

    const-class v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->$VALUES:[Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    invoke-virtual {v0}, [Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxelbusters/essentialkit/gameservices/GameServicesErrorCode;

    return-object v0
.end method
