.class public final enum Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

.field public static final enum Unknown:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

.field public static final enum UpdateAvailable:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

.field public static final enum UpdateDownloaded:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

.field public static final enum UpdateInProgress:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

.field public static final enum UpdateNotAvailable:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;


# direct methods
.method private static synthetic $values()[Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;
    .locals 5

    sget-object v0, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;->Unknown:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    sget-object v1, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;->UpdateAvailable:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    sget-object v2, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;->UpdateNotAvailable:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    sget-object v3, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;->UpdateInProgress:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    sget-object v4, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;->UpdateDownloaded:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;->Unknown:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    new-instance v0, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    const-string v1, "UpdateAvailable"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;->UpdateAvailable:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    new-instance v0, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    const-string v1, "UpdateNotAvailable"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;->UpdateNotAvailable:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    new-instance v0, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    const-string v1, "UpdateInProgress"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;->UpdateInProgress:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    new-instance v0, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    const-string v1, "UpdateDownloaded"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;->UpdateDownloaded:Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    invoke-static {}, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;->$values()[Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    move-result-object v0

    sput-object v0, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;->$VALUES:[Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;
    .locals 1

    const-class v0, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    return-object p0
.end method

.method public static values()[Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;->$VALUES:[Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    invoke-virtual {v0}, [Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxelbusters/essentialkit/appupdater/UpdateStatus;

    return-object v0
.end method
