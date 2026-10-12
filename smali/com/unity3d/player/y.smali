.class final enum Lcom/unity3d/player/y;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/unity3d/player/y;

.field public static final enum c:Lcom/unity3d/player/y;


# instance fields
.field final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/unity3d/player/y;

    const-string v1, "ActivityOrService"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/unity3d/player/y;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/player/y;->b:Lcom/unity3d/player/y;

    new-instance v0, Lcom/unity3d/player/y;

    const-string v1, "GameActivity"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/unity3d/player/y;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/unity3d/player/y;->c:Lcom/unity3d/player/y;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/unity3d/player/y;->a:I

    return-void
.end method
