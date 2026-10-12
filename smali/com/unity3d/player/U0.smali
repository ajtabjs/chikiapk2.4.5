.class final Lcom/unity3d/player/U0;
.super Lcom/unity3d/player/X0;
.source "SourceFile"


# instance fields
.field final synthetic b:Z

.field final synthetic c:Lcom/unity3d/player/V0;


# direct methods
.method constructor <init>(Lcom/unity3d/player/V0;Z)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/U0;->c:Lcom/unity3d/player/V0;

    iput-boolean p2, p0, Lcom/unity3d/player/U0;->b:Z

    iget-object p1, p1, Lcom/unity3d/player/V0;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0, p1}, Lcom/unity3d/player/X0;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/U0;->c:Lcom/unity3d/player/V0;

    invoke-static {v0}, Lcom/unity3d/player/V0;->-$$Nest$fgeta(Lcom/unity3d/player/V0;)J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/unity3d/player/U0;->b:Z

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->permissionResponseToNative(JZ)V

    return-void
.end method
