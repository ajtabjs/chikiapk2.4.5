.class public final enum Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

.field public static final enum NetworkIssue:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

.field public static final enum Unknown:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

.field public static final enum UpdateCancelled:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

.field public static final enum UpdateInProgress:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

.field public static final enum UpdateInfoNotAvailable:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

.field public static final enum UpdateNotAvailable:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

.field public static final enum UpdateNotCompatible:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;


# direct methods
.method private static synthetic $values()[Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;
    .locals 7

    sget-object v0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    sget-object v1, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->NetworkIssue:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    sget-object v2, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->UpdateNotCompatible:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    sget-object v3, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->UpdateInfoNotAvailable:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    sget-object v4, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->UpdateNotAvailable:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    sget-object v5, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->UpdateInProgress:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    sget-object v6, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->UpdateCancelled:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    filled-new-array/range {v0 .. v6}, [Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    const-string v1, "NetworkIssue"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->NetworkIssue:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    const-string v1, "UpdateNotCompatible"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->UpdateNotCompatible:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    const-string v1, "UpdateInfoNotAvailable"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->UpdateInfoNotAvailable:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    const-string v1, "UpdateNotAvailable"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->UpdateNotAvailable:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    const-string v1, "UpdateInProgress"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->UpdateInProgress:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    new-instance v0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    const-string v1, "UpdateCancelled"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->UpdateCancelled:Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    invoke-static {}, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->$values()[Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    move-result-object v0

    sput-object v0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->$VALUES:[Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;
    .locals 1

    const-class v0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->$VALUES:[Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    invoke-virtual {v0}, [Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxelbusters/essentialkit/appupdater/AppUpdaterErrorCode;

    return-object v0
.end method
