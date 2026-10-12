.class public Lcom/unity3d/player/UnityPlayerForActivityOrService;
.super Lcom/unity3d/player/UnityPlayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;,
        Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;
    }
.end annotation


# instance fields
.field private mMainDisplayOverride:Z

.field private mOnHandleFocusListener:Lcom/unity3d/player/I;

.field private mProcessKillRequested:Z

.field private mSoftInput:Lcom/unity3d/player/W;

.field private mSoftInputTimeoutMilliSeconds:J

.field private m_IsNoWindowMode:I

.field private m_MainThread:Lcom/unity3d/player/G0;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMainDisplayOverride(Lcom/unity3d/player/UnityPlayerForActivityOrService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->mMainDisplayOverride:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoftInput(Lcom/unity3d/player/UnityPlayerForActivityOrService;)Lcom/unity3d/player/W;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->mSoftInput:Lcom/unity3d/player/W;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSoftInput(Lcom/unity3d/player/UnityPlayerForActivityOrService;Lcom/unity3d/player/W;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->mSoftInput:Lcom/unity3d/player/W;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdismissSoftInput(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->dismissSoftInput()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeOnApplyWindowInsets(Lcom/unity3d/player/UnityPlayerForActivityOrService;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativeOnApplyWindowInsets(Landroid/view/WindowInsets;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativePause(Lcom/unity3d/player/UnityPlayerForActivityOrService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativePause()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnativeRecreateGfxState(Lcom/unity3d/player/UnityPlayerForActivityOrService;ILandroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativeRecreateGfxState(ILandroid/view/Surface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeReportKeyboardConfigChanged(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativeReportKeyboardConfigChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeResume(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativeResume()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeSendSurfaceChangedEvent(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativeSendSurfaceChangedEvent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeSetInputArea(Lcom/unity3d/player/UnityPlayerForActivityOrService;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativeSetInputArea(IIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeSetInputSelection(Lcom/unity3d/player/UnityPlayerForActivityOrService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativeSetInputSelection(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeSetInputString(Lcom/unity3d/player/UnityPlayerForActivityOrService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativeSetInputString(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeSetKeyboardIsVisible(Lcom/unity3d/player/UnityPlayerForActivityOrService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativeSetKeyboardIsVisible(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeSoftInputCanceled(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativeSoftInputCanceled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeSoftInputClosed(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativeSoftInputClosed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeSoftInputLostFocus(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativeSoftInputLostFocus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mqueueDestroy(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->queueDestroy()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V
    .locals 2

    sget-object v0, Lcom/unity3d/player/y;->b:Lcom/unity3d/player/y;

    invoke-direct {p0, p1, v0, p2}, Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/y;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    new-instance p2, Lcom/unity3d/player/G0;

    invoke-direct {p2, p0}, Lcom/unity3d/player/G0;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    iput-object p2, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->m_MainThread:Lcom/unity3d/player/G0;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->mMainDisplayOverride:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->mSoftInput:Lcom/unity3d/player/W;

    const/4 p2, -0x1

    iput p2, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->m_IsNoWindowMode:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->mProcessKillRequested:Z

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->mSoftInputTimeoutMilliSeconds:J

    new-instance p2, Lcom/unity3d/player/B;

    invoke-direct {p2, p1, p0}, Lcom/unity3d/player/B;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    new-instance p1, Lcom/unity3d/player/l1;

    invoke-direct {p1, p0}, Lcom/unity3d/player/l1;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-virtual {p0, p2}, Lcom/unity3d/player/UnityPlayer;->initialize(Landroid/widget/FrameLayout;)V

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->m_MainThread:Lcom/unity3d/player/G0;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private dismissSoftInput()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->mSoftInput:Lcom/unity3d/player/W;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/player/W;->b()V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativeReportKeyboardConfigChanged()V

    :cond_0
    return-void
.end method

.method private getSoftInputTimeout()J
    .locals 4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->mSoftInputTimeoutMilliSeconds:J

    long-to-double v2, v2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method private final native nativeDone()Z
.end method

.method private final native nativeGetNoWindowMode()Z
.end method

.method private final native nativeMemoryUsageChanged(I)V
.end method

.method private final native nativeOnApplyWindowInsets(Landroid/view/WindowInsets;)V
.end method

.method private final native nativePause()Z
.end method

.method private final native nativeRecreateGfxState(ILandroid/view/Surface;)V
.end method

.method private final native nativeReportKeyboardConfigChanged()V
.end method

.method private final native nativeResume()V
.end method

.method private final native nativeSendSurfaceChangedEvent()V
.end method

.method private final native nativeSetInputArea(IIII)V
.end method

.method private final native nativeSetInputSelection(II)V
.end method

.method private final native nativeSetInputString(Ljava/lang/String;)V
.end method

.method private final native nativeSetKeyboardIsVisible(Z)V
.end method

.method private final native nativeSoftInputCanceled()V
.end method

.method private final native nativeSoftInputClosed()V
.end method

.method private final native nativeSoftInputLostFocus()V
.end method

.method private queueDestroy()V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "Queue Destroy"

    invoke-static {v0, v1}, Lcom/unity3d/player/D;->Log(ILjava/lang/String;)V

    new-instance v0, Lcom/unity3d/player/k1;

    invoke-direct {v0, p0}, Lcom/unity3d/player/k1;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private raiseFocusListener(Z)V
    .locals 1

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->mOnHandleFocusListener:Lcom/unity3d/player/I;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/unity3d/player/Z0;

    iget-object p1, p1, Lcom/unity3d/player/Z0;->a:Lcom/unity3d/player/b1;

    const/4 v0, 0x1

    .line 0
    iput-boolean v0, p1, Lcom/unity3d/player/b1;->b:Z

    iget-boolean v0, p1, Lcom/unity3d/player/b1;->a:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/unity3d/player/b1;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    return-void
.end method

.method private updateDisplayInternal(ILandroid/view/Surface;)Z
    .locals 5

    const-string v0, "Timeout ("

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isNativeInitialized()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v2, Lcom/unity3d/player/q1;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/unity3d/player/q1;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;ILandroid/view/Surface;Ljava/util/concurrent/Semaphore;)V

    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->m_MainThread:Lcom/unity3d/player/G0;

    if-nez p2, :cond_1

    invoke-virtual {v3, v2}, Lcom/unity3d/player/G0;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v2}, Lcom/unity3d/player/G0;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/unity3d/player/q1;->run()V

    :goto_0
    if-nez p2, :cond_3

    if-nez p1, :cond_3

    const/4 p1, 0x5

    :try_start_0
    sget-object p2, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->SurfaceDetach:Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

    invoke-virtual {p2}, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->getTimeout()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->getTimeout()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " ms) while trying detaching primary window."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unity3d/player/D;->Log(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p2, "UI thread got interrupted while trying to detach the primary window from the Unity Engine."

    invoke-static {p1, p2}, Lcom/unity3d/player/D;->Log(ILjava/lang/String;)V

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method cleanupResourcesForDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->m_MainThread:Lcom/unity3d/player/G0;

    invoke-virtual {v0}, Lcom/unity3d/player/G0;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->m_MainThread:Lcom/unity3d/player/G0;

    sget-object v1, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->Destroy:Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

    invoke-virtual {v1}, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->getTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->m_MainThread:Lcom/unity3d/player/G0;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    invoke-static {}, Lcom/unity3d/player/C1;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->mProcessKillRequested:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_UnityPlayerLifecycleEvents:Lcom/unity3d/player/IUnityPlayerLifecycleEvents;

    invoke-interface {v0}, Lcom/unity3d/player/IUnityPlayerLifecycleEvents;->onUnityPlayerQuitted()V

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->kill()V

    :cond_1
    return-void
.end method

.method public configurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isNativeInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    new-instance p1, Lcom/unity3d/player/o1;

    invoke-direct {p1, p0, v0}, Lcom/unity3d/player/o1;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;Landroid/content/res/Configuration;)V

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public displayChanged(ILandroid/view/Surface;)Z
    .locals 1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->mMainDisplayOverride:Z

    new-instance v0, Lcom/unity3d/player/r1;

    invoke-direct {v0, p0}, Lcom/unity3d/player/r1;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->updateDisplayInternal(ILandroid/view/Surface;)Z

    move-result p1

    return p1
.end method

.method getHaveAndroidWindowSupport()Z
    .locals 2

    iget v0, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->m_IsNoWindowMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativeGetNoWindowMode()Z

    move-result v0

    iput v0, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->m_IsNoWindowMode:I

    :cond_0
    iget v0, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->m_IsNoWindowMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->getSurfaceView()Lcom/unity3d/player/g;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceView()Lcom/unity3d/player/g;
    .locals 1

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->getView()Lcom/unity3d/player/D0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/player/D0;->a()Lcom/unity3d/player/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->getView()Lcom/unity3d/player/D0;

    move-result-object v0

    return-object v0
.end method

.method public getView()Lcom/unity3d/player/D0;
    .locals 1

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/B;

    invoke-virtual {v0}, Lcom/unity3d/player/B;->a()Lcom/unity3d/player/D0;

    move-result-object v0

    return-object v0
.end method

.method handleFocus(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/C1;

    invoke-virtual {v0}, Lcom/unity3d/player/C1;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->mSoftInput:Lcom/unity3d/player/W;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/player/W;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->m_MainThread:Lcom/unity3d/player/G0;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/unity3d/player/G0;->a()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/unity3d/player/G0;->b()V

    :goto_0
    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->raiseFocusListener(Z)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->raiseFocusListener(Z)V

    const/4 p1, 0x0

    return p1
.end method

.method hidePreservedContent()V
    .locals 1

    new-instance v0, Lcom/unity3d/player/t1;

    invoke-direct {v0, p0}, Lcom/unity3d/player/t1;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected hideSoftInput()V
    .locals 7

    const-string v0, "Timeout ("

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->mSoftInput:Lcom/unity3d/player/W;

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->reportSoftInputArea(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->reportSoftInputIsVisible(Z)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->dismissSoftInput()V

    iput-object v4, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->mSoftInput:Lcom/unity3d/player/W;

    return-void

    :cond_1
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v1, Lcom/unity3d/player/b1;

    invoke-direct {v1, p0, v2, p0}, Lcom/unity3d/player/b1;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;Ljava/util/concurrent/Semaphore;Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    invoke-virtual {p0, v1}, Lcom/unity3d/player/UnityPlayer;->postOnUiThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x6

    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->getSoftInputTimeout()J

    move-result-wide v5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->getSoftInputTimeout()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms) while waiting softinput hiding operation."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unity3d/player/D;->Log(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    iput-object v4, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->mSoftInput:Lcom/unity3d/player/W;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string v0, "UI thread got interrupted while waiting softinput hiding operation."

    invoke-static {v1, v0}, Lcom/unity3d/player/D;->Log(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iput-object v4, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->mSoftInput:Lcom/unity3d/player/W;

    throw v0
.end method

.method final native nativeConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method final native nativeFocusChanged(Z)V
.end method

.method final native nativeOrientationChanged(II)V
.end method

.method final native nativeRender()Z
.end method

.method onOrientationChanged(II)V
    .locals 1

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->m_MainThread:Lcom/unity3d/player/G0;

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->mNaturalOrientation:I

    invoke-virtual {p1, v0, p2}, Lcom/unity3d/player/G0;->a(II)V

    return-void
.end method

.method public onTrimMemory(Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;)V
    .locals 1

    invoke-static {}, Lcom/unity3d/player/C1;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Lcom/unity3d/player/UnityPlayerForActivityOrService$MemoryUsage;->value:I

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativeMemoryUsageChanged(I)V

    return-void
.end method

.method pauseUnity()V
    .locals 8

    const-string v0, "Timeout ("

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayer;->pauseUnity()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v2}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->reportSoftInputStr(Ljava/lang/String;IZ)V

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/C1;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/unity3d/player/C1;->c(Z)V

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/C1;

    invoke-virtual {v1, v2}, Lcom/unity3d/player/C1;->e(Z)V

    invoke-static {}, Lcom/unity3d/player/C1;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/unity3d/player/m1;

    invoke-direct {v2, p0, v1}, Lcom/unity3d/player/m1;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;Ljava/util/concurrent/Semaphore;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/unity3d/player/n1;

    invoke-direct {v2, p0, v1}, Lcom/unity3d/player/n1;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;Ljava/util/concurrent/Semaphore;)V

    :goto_0
    iget-object v4, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->m_MainThread:Lcom/unity3d/player/G0;

    invoke-virtual {v4, v2}, Lcom/unity3d/player/G0;->a(Ljava/lang/Runnable;)V

    const/4 v2, 0x5

    :try_start_0
    sget-object v4, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->Pause:Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;

    invoke-virtual {v4}, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->getTimeout()I

    move-result v5

    int-to-long v5, v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6, v7}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/unity3d/player/UnityPlayerForActivityOrService$SynchronizationTimeout;->getTimeout()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms) while trying to pause the Unity Engine."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/unity3d/player/D;->Log(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "UI thread got interrupted while trying to pause the Unity Engine."

    invoke-static {v2, v0}, Lcom/unity3d/player/D;->Log(ILjava/lang/String;)V

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->m_AddPhoneCallListener:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_TelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_PhoneCallListener:Lcom/unity3d/player/W0;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2
    return-void
.end method

.method protected reportSoftInputArea(Landroid/graphics/Rect;)V
    .locals 1

    new-instance v0, Lcom/unity3d/player/i1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/i1;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected reportSoftInputIsVisible(Z)V
    .locals 1

    new-instance v0, Lcom/unity3d/player/j1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/j1;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;Z)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected reportSoftInputSelection(II)V
    .locals 1

    new-instance v0, Lcom/unity3d/player/h1;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/player/h1;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;II)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected reportSoftInputStr(Ljava/lang/String;IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->hideSoftInput()V

    :cond_0
    new-instance v0, Lcom/unity3d/player/g1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/unity3d/player/g1;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;ZLjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method resumeUnity()V
    .locals 1

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayer;->resumeUnity()V

    new-instance v0, Lcom/unity3d/player/s1;

    invoke-direct {v0, p0}, Lcom/unity3d/player/s1;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->m_MainThread:Lcom/unity3d/player/G0;

    invoke-virtual {v0}, Lcom/unity3d/player/G0;->d()V

    return-void
.end method

.method public runningOnMainThread()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->m_MainThread:Lcom/unity3d/player/G0;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method sendSurfaceChangedEvent()V
    .locals 2

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isNativeInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/unity3d/player/p1;

    invoke-direct {v0, p0}, Lcom/unity3d/player/p1;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->m_MainThread:Lcom/unity3d/player/G0;

    invoke-virtual {v1, v0}, Lcom/unity3d/player/G0;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setCharacterLimit(I)V
    .locals 1

    new-instance v0, Lcom/unity3d/player/d1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/d1;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;I)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setHideInputField(Z)V
    .locals 1

    new-instance v0, Lcom/unity3d/player/e1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/e1;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;Z)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMainSurfaceViewAspectRatio(F)V
    .locals 1

    new-instance v0, Lcom/unity3d/player/u1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/u1;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;F)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOnHandleFocusListener(Lcom/unity3d/player/I;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->mOnHandleFocusListener:Lcom/unity3d/player/I;

    return-void
.end method

.method protected setSelection(II)V
    .locals 1

    new-instance v0, Lcom/unity3d/player/f1;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/player/f1;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;II)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setSoftInputStr(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/unity3d/player/c1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/c1;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected showSoftInput(Ljava/lang/String;IZZZZLjava/lang/String;IZZ)V
    .locals 17

    const-string v0, "Timeout ("

    new-instance v15, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v15, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v14, Lcom/unity3d/player/w1;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v16, v0

    move-object v0, v14

    move-object v14, v15

    invoke-direct/range {v1 .. v14}, Lcom/unity3d/player/w1;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;Lcom/unity3d/player/UnityPlayerForActivityOrService;Ljava/lang/String;IZZZZLjava/lang/String;IZZLjava/util/concurrent/Semaphore;)V

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/unity3d/player/UnityPlayer;->postOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x6

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->getSoftInputTimeout()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v15, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->getSoftInputTimeout()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms) while waiting softinput showing operation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unity3d/player/D;->Log(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "UI thread got interrupted while waiting softinput showing operation."

    invoke-static {v0, v2}, Lcom/unity3d/player/D;->Log(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method shutdown()V
    .locals 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->nativeDone()Z

    move-result v0

    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->mProcessKillRequested:Z

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayer;->shutdown()V

    return-void
.end method

.method updateGLDisplay(ILandroid/view/Surface;)V
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayerForActivityOrService;->mMainDisplayOverride:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->updateDisplayInternal(ILandroid/view/Surface;)Z

    return-void
.end method
