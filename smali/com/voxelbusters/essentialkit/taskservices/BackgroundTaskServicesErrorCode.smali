.class public final enum Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;

.field public static final enum Unknown:Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;


# direct methods
.method private static synthetic $values()[Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;

    filled-new-array {v0}, [Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;

    invoke-static {}, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;->$values()[Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;

    move-result-object v0

    sput-object v0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;->$VALUES:[Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;
    .locals 1

    const-class v0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;->$VALUES:[Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;

    invoke-virtual {v0}, [Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxelbusters/essentialkit/taskservices/BackgroundTaskServicesErrorCode;

    return-object v0
.end method
