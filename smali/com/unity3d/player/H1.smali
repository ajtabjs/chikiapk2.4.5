.class final Lcom/unity3d/player/H1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unity3d/player/I1;


# direct methods
.method constructor <init>(Lcom/unity3d/player/I1;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/H1;->a:Lcom/unity3d/player/I1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/H1;->a:Lcom/unity3d/player/I1;

    iget-object v0, v0, Lcom/unity3d/player/I1;->a:Lcom/unity3d/player/J1;

    iget-object v0, v0, Lcom/unity3d/player/J1;->h:Lcom/unity3d/player/O1;

    invoke-static {v0}, Lcom/unity3d/player/O1;->-$$Nest$fgetf(Lcom/unity3d/player/O1;)Lcom/unity3d/player/G1;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 0
    invoke-static {v0}, Lcom/unity3d/player/O1;->-$$Nest$fgeta(Lcom/unity3d/player/O1;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/unity3d/player/UnityPlayer;->removeViewFromPlayer(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unity3d/player/O1;->-$$Nest$fputi(Lcom/unity3d/player/O1;Z)V

    invoke-static {v0}, Lcom/unity3d/player/O1;->-$$Nest$fgetf(Lcom/unity3d/player/O1;)Lcom/unity3d/player/G1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/player/G1;->destroyPlayer()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unity3d/player/O1;->-$$Nest$fputf(Lcom/unity3d/player/O1;Lcom/unity3d/player/G1;)V

    invoke-static {v0}, Lcom/unity3d/player/O1;->-$$Nest$fgetc(Lcom/unity3d/player/O1;)Lcom/unity3d/player/N1;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/unity3d/player/P0;

    invoke-virtual {v0}, Lcom/unity3d/player/P0;->a()V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/H1;->a:Lcom/unity3d/player/I1;

    iget-object v0, v0, Lcom/unity3d/player/I1;->a:Lcom/unity3d/player/J1;

    iget-object v0, v0, Lcom/unity3d/player/J1;->h:Lcom/unity3d/player/O1;

    invoke-static {v0}, Lcom/unity3d/player/O1;->-$$Nest$fgeta(Lcom/unity3d/player/O1;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->onResume()V

    return-void
.end method
