.class final Lcom/unity3d/player/V0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/player/IPermissionRequestCallbacks;


# instance fields
.field private a:J

.field final synthetic b:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method static bridge synthetic -$$Nest$fgeta(Lcom/unity3d/player/V0;)J
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/V0;->a:J

    return-wide v0
.end method

.method public constructor <init>(Lcom/unity3d/player/UnityPlayer;J)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/V0;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/unity3d/player/V0;->a:J

    return-void
.end method


# virtual methods
.method public final onPermissionResult([Ljava/lang/String;[I)V
    .locals 3

    array-length p1, p2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x6

    const-string p2, "Only a single permission request is supported"

    invoke-static {p1, p2}, Lcom/unity3d/player/D;->Log(ILjava/lang/String;)V

    return-void

    :cond_0
    aget p1, p2, v0

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    iget-wide p1, p0, Lcom/unity3d/player/V0;->a:J

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/unity3d/player/V0;->b:Lcom/unity3d/player/UnityPlayer;

    new-instance p2, Lcom/unity3d/player/U0;

    invoke-direct {p2, p0, v0}, Lcom/unity3d/player/U0;-><init>(Lcom/unity3d/player/V0;Z)V

    invoke-static {p1, p2}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$minvokeOnMainThread(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/X0;)V

    :goto_0
    return-void
.end method
