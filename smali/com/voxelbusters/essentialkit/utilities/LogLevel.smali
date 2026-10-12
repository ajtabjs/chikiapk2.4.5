.class public final enum Lcom/voxelbusters/essentialkit/utilities/LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxelbusters/essentialkit/utilities/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxelbusters/essentialkit/utilities/LogLevel;

.field public static final enum Critical:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

.field public static final enum Error:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

.field public static final enum Info:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

.field public static final enum None:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

.field public static final enum Warning:Lcom/voxelbusters/essentialkit/utilities/LogLevel;


# direct methods
.method private static synthetic $values()[Lcom/voxelbusters/essentialkit/utilities/LogLevel;
    .locals 5

    sget-object v0, Lcom/voxelbusters/essentialkit/utilities/LogLevel;->Info:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    sget-object v1, Lcom/voxelbusters/essentialkit/utilities/LogLevel;->Warning:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    sget-object v2, Lcom/voxelbusters/essentialkit/utilities/LogLevel;->Error:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    sget-object v3, Lcom/voxelbusters/essentialkit/utilities/LogLevel;->Critical:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    sget-object v4, Lcom/voxelbusters/essentialkit/utilities/LogLevel;->None:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    const-string v1, "Info"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/utilities/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/utilities/LogLevel;->Info:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    const-string v1, "Warning"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/utilities/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/utilities/LogLevel;->Warning:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    const-string v1, "Error"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/utilities/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/utilities/LogLevel;->Error:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    const-string v1, "Critical"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/utilities/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/utilities/LogLevel;->Critical:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    const-string v1, "None"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/utilities/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/utilities/LogLevel;->None:Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    invoke-static {}, Lcom/voxelbusters/essentialkit/utilities/LogLevel;->$values()[Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    move-result-object v0

    sput-object v0, Lcom/voxelbusters/essentialkit/utilities/LogLevel;->$VALUES:[Lcom/voxelbusters/essentialkit/utilities/LogLevel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/utilities/LogLevel;
    .locals 1

    const-class v0, Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/voxelbusters/essentialkit/utilities/LogLevel;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/utilities/LogLevel;->$VALUES:[Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    invoke-virtual {v0}, [Lcom/voxelbusters/essentialkit/utilities/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxelbusters/essentialkit/utilities/LogLevel;

    return-object v0
.end method
