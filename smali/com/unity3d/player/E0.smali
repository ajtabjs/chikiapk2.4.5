.class final Lcom/unity3d/player/E0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/unity3d/player/G0;


# direct methods
.method constructor <init>(Lcom/unity3d/player/G0;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0x8dd

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/player/F0;

    sget-object v0, Lcom/unity3d/player/F0;->h:Lcom/unity3d/player/F0;

    const/4 v3, 0x1

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgetf(Lcom/unity3d/player/G0;)I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {p1, v1}, Lcom/unity3d/player/G0;->-$$Nest$fputf(Lcom/unity3d/player/G0;I)V

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgeta(Lcom/unity3d/player/G0;)Lcom/unity3d/player/UnityPlayerForActivityOrService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->executeMainThreadJobs()V

    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgetc(Lcom/unity3d/player/G0;)Z

    move-result v1

    if-nez v1, :cond_1

    return v3

    :cond_1
    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgeta(Lcom/unity3d/player/G0;)Lcom/unity3d/player/UnityPlayerForActivityOrService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->getHaveAndroidWindowSupport()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgetd(Lcom/unity3d/player/G0;)Z

    move-result p1

    if-nez p1, :cond_2

    return v3

    :cond_2
    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgeti(Lcom/unity3d/player/G0;)I

    move-result v1

    if-ltz v1, :cond_5

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgeta(Lcom/unity3d/player/G0;)Lcom/unity3d/player/UnityPlayerForActivityOrService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->getSplashEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgeta(Lcom/unity3d/player/G0;)Lcom/unity3d/player/UnityPlayerForActivityOrService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->disableStaticSplashScreen()V

    :cond_3
    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgeta(Lcom/unity3d/player/G0;)Lcom/unity3d/player/UnityPlayerForActivityOrService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->shouldReportFullyDrawn()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgeta(Lcom/unity3d/player/G0;)Lcom/unity3d/player/UnityPlayerForActivityOrService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->reportFullyDrawn()V

    :cond_4
    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgeti(Lcom/unity3d/player/G0;)I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {p1, v1}, Lcom/unity3d/player/G0;->-$$Nest$fputi(Lcom/unity3d/player/G0;I)V

    :cond_5
    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgeta(Lcom/unity3d/player/G0;)Lcom/unity3d/player/UnityPlayerForActivityOrService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgeta(Lcom/unity3d/player/G0;)Lcom/unity3d/player/UnityPlayerForActivityOrService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativeRender()Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgeta(Lcom/unity3d/player/G0;)Lcom/unity3d/player/UnityPlayerForActivityOrService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->finish()V

    goto/16 :goto_1

    :cond_6
    sget-object v4, Lcom/unity3d/player/F0;->c:Lcom/unity3d/player/F0;

    if-ne p1, v4, :cond_7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_1

    :cond_7
    sget-object v4, Lcom/unity3d/player/F0;->b:Lcom/unity3d/player/F0;

    if-ne p1, v4, :cond_8

    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1, v3}, Lcom/unity3d/player/G0;->-$$Nest$fputc(Lcom/unity3d/player/G0;Z)V

    goto/16 :goto_1

    :cond_8
    sget-object v4, Lcom/unity3d/player/F0;->a:Lcom/unity3d/player/F0;

    if-ne p1, v4, :cond_9

    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1, v1}, Lcom/unity3d/player/G0;->-$$Nest$fputc(Lcom/unity3d/player/G0;Z)V

    goto/16 :goto_1

    :cond_9
    sget-object v4, Lcom/unity3d/player/F0;->d:Lcom/unity3d/player/F0;

    if-ne p1, v4, :cond_a

    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1, v1}, Lcom/unity3d/player/G0;->-$$Nest$fputd(Lcom/unity3d/player/G0;Z)V

    goto/16 :goto_1

    :cond_a
    sget-object v4, Lcom/unity3d/player/F0;->e:Lcom/unity3d/player/F0;

    const/4 v5, 0x3

    if-ne p1, v4, :cond_b

    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1, v3}, Lcom/unity3d/player/G0;->-$$Nest$fputd(Lcom/unity3d/player/G0;Z)V

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgete(Lcom/unity3d/player/G0;)I

    move-result v1

    if-ne v1, v5, :cond_10

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgeta(Lcom/unity3d/player/G0;)Lcom/unity3d/player/UnityPlayerForActivityOrService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->getHaveAndroidWindowSupport()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgetd(Lcom/unity3d/player/G0;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_0

    .line 0
    :cond_b
    sget-object v4, Lcom/unity3d/player/F0;->f:Lcom/unity3d/player/F0;

    if-ne p1, v4, :cond_d

    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgete(Lcom/unity3d/player/G0;)I

    move-result v4

    if-ne v4, v3, :cond_c

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgeta(Lcom/unity3d/player/G0;)Lcom/unity3d/player/UnityPlayerForActivityOrService;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativeFocusChanged(Z)V

    :cond_c
    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/unity3d/player/G0;->-$$Nest$fpute(Lcom/unity3d/player/G0;I)V

    goto :goto_1

    :cond_d
    sget-object v1, Lcom/unity3d/player/F0;->g:Lcom/unity3d/player/F0;

    if-ne p1, v1, :cond_f

    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1, v5}, Lcom/unity3d/player/G0;->-$$Nest$fpute(Lcom/unity3d/player/G0;I)V

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgeta(Lcom/unity3d/player/G0;)Lcom/unity3d/player/UnityPlayerForActivityOrService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->getHaveAndroidWindowSupport()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgetd(Lcom/unity3d/player/G0;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 0
    :cond_e
    :goto_0
    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgeta(Lcom/unity3d/player/G0;)Lcom/unity3d/player/UnityPlayerForActivityOrService;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativeFocusChanged(Z)V

    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1, v3}, Lcom/unity3d/player/G0;->-$$Nest$fpute(Lcom/unity3d/player/G0;I)V

    goto :goto_1

    .line 0
    :cond_f
    sget-object v1, Lcom/unity3d/player/F0;->i:Lcom/unity3d/player/F0;

    if-ne p1, v1, :cond_10

    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgeta(Lcom/unity3d/player/G0;)Lcom/unity3d/player/UnityPlayerForActivityOrService;

    move-result-object v1

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgetg(Lcom/unity3d/player/G0;)I

    move-result v4

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgeth(Lcom/unity3d/player/G0;)I

    move-result p1

    invoke-virtual {v1, v4, p1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativeOrientationChanged(II)V

    :cond_10
    :goto_1
    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgetc(Lcom/unity3d/player/G0;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgetf(Lcom/unity3d/player/G0;)I

    move-result v1

    if-gtz v1, :cond_11

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgetb(Lcom/unity3d/player/G0;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p1, p0, Lcom/unity3d/player/E0;->a:Lcom/unity3d/player/G0;

    invoke-static {p1}, Lcom/unity3d/player/G0;->-$$Nest$fgetf(Lcom/unity3d/player/G0;)I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {p1, v0}, Lcom/unity3d/player/G0;->-$$Nest$fputf(Lcom/unity3d/player/G0;I)V

    :cond_11
    return v3
.end method
