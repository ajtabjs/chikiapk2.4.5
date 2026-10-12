.class public final enum Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

.field public static final enum Authorized:Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

.field public static final enum Denied:Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

.field public static final enum NotDetermined:Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;


# direct methods
.method private static synthetic $values()[Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;
    .locals 3

    sget-object v0, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;->Denied:Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    sget-object v1, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;->Authorized:Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    sget-object v2, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;->NotDetermined:Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    filled-new-array {v0, v1, v2}, [Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    const-string v1, "Denied"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;->Denied:Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    const-string v1, "Authorized"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;->Authorized:Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    const-string v1, "NotDetermined"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;->NotDetermined:Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    invoke-static {}, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;->$values()[Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    move-result-object v0

    sput-object v0, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;->$VALUES:[Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;
    .locals 1

    const-class v0, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    return-object p0
.end method

.method public static values()[Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;->$VALUES:[Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    invoke-virtual {v0}, [Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    return-object v0
.end method
