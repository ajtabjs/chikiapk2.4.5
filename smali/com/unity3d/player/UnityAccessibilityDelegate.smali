.class Lcom/unity3d/player/UnityAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field private final a:Lcom/unity3d/player/UnityPlayer;

.field private final b:Landroid/view/SurfaceView;

.field private c:Landroid/view/accessibility/AccessibilityManager;

.field private d:Lcom/unity3d/player/u0;

.field private e:Landroid/view/accessibility/CaptioningManager;

.field private f:Lcom/unity3d/player/w0;

.field private g:I

.field private h:I

.field private i:Z

.field private j:F

.field private k:Landroid/view/accessibility/AccessibilityNodeProvider;


# direct methods
.method static bridge synthetic -$$Nest$fgeta(Lcom/unity3d/player/UnityAccessibilityDelegate;)Lcom/unity3d/player/UnityPlayer;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetb(Lcom/unity3d/player/UnityAccessibilityDelegate;)Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->b:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetc(Lcom/unity3d/player/UnityAccessibilityDelegate;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->c:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgete(Lcom/unity3d/player/UnityAccessibilityDelegate;)Landroid/view/accessibility/CaptioningManager;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->e:Landroid/view/accessibility/CaptioningManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeth(Lcom/unity3d/player/UnityAccessibilityDelegate;)I
    .locals 0

    iget p0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->h:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgeti(Lcom/unity3d/player/UnityAccessibilityDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->i:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputd(Lcom/unity3d/player/UnityAccessibilityDelegate;Lcom/unity3d/player/u0;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->d:Lcom/unity3d/player/u0;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputf(Lcom/unity3d/player/UnityAccessibilityDelegate;Lcom/unity3d/player/w0;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->f:Lcom/unity3d/player/w0;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputh(Lcom/unity3d/player/UnityAccessibilityDelegate;I)V
    .locals 0

    iput p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->h:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputi(Lcom/unity3d/player/UnityAccessibilityDelegate;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->i:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetRootNodeIds()[I
    .locals 1

    invoke-static {}, Lcom/unity3d/player/UnityAccessibilityDelegate;->getRootNodeIds()[I

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smhitTest(FF)I
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->hitTest(FF)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisNodeDismissable(I)Z
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->isNodeDismissable(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisNodeSelectable(I)Z
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->isNodeSelectable(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smonNodeDecremented(I)V
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->onNodeDecremented(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smonNodeDismissed(I)Z
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->onNodeDismissed(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smonNodeFocusChanged(IZ)V
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->onNodeFocusChanged(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smonNodeIncremented(I)V
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->onNodeIncremented(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smonNodeSelected(I)Z
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->onNodeSelected(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smpopulateNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/unity3d/player/UnityAccessibilityDelegate;->populateNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smsendClosedCaptioningChangedNotification(Z)V
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->sendClosedCaptioningChangedNotification(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsendFontScaleChangedNotification(F)V
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->sendFontScaleChangedNotification(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsendScreenReaderStatusChangedNotification(Z)V
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->sendScreenReaderStatusChangedNotification(Z)V

    return-void
.end method

.method constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->g:I

    iput v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->i:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->j:F

    new-instance v0, Lcom/unity3d/player/s0;

    invoke-direct {v0, p0}, Lcom/unity3d/player/s0;-><init>(Lcom/unity3d/player/UnityAccessibilityDelegate;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->k:Landroid/view/accessibility/AccessibilityNodeProvider;

    iput-object p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->b:Landroid/view/SurfaceView;

    return-void
.end method

.method private static native getRootNodeIds()[I
.end method

.method private static native hitTest(FF)I
.end method

.method protected static init(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/UnityAccessibilityDelegate;
    .locals 3

    new-instance v0, Lcom/unity3d/player/UnityAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityAccessibilityDelegate;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iget-object p0, v0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "accessibility"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    iput-object p0, v0, Lcom/unity3d/player/UnityAccessibilityDelegate;->c:Landroid/view/accessibility/AccessibilityManager;

    iget-object p0, v0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "captioning"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/CaptioningManager;

    iput-object p0, v0, Lcom/unity3d/player/UnityAccessibilityDelegate;->e:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, v0, Lcom/unity3d/player/UnityAccessibilityDelegate;->c:Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    new-instance p0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iget-object v1, v0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    new-instance v2, Lcom/unity3d/player/k0;

    invoke-direct {v2, v0, p0}, Lcom/unity3d/player/k0;-><init>(Lcom/unity3d/player/UnityAccessibilityDelegate;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v1, v2}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object p0, v0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    iput p0, v0, Lcom/unity3d/player/UnityAccessibilityDelegate;->j:F

    iget-object p0, v0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->setAccessibilityDelegate(Lcom/unity3d/player/UnityAccessibilityDelegate;)V

    return-object v0
.end method

.method private static native isNodeDismissable(I)Z
.end method

.method private static native isNodeSelectable(I)Z
.end method

.method private static native onNodeDecremented(I)V
.end method

.method private static native onNodeDismissed(I)Z
.end method

.method private static native onNodeFocusChanged(IZ)V
.end method

.method private static native onNodeIncremented(I)V
.end method

.method private static native onNodeSelected(I)Z
.end method

.method private static native populateNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/view/View;)Z
.end method

.method private static native sendClosedCaptioningChangedNotification(Z)V
.end method

.method private static native sendFontScaleChangedNotification(F)V
.end method

.method private static native sendScreenReaderStatusChangedNotification(Z)V
.end method


# virtual methods
.method public final a(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->j:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->j:F

    new-instance v0, Lcom/unity3d/player/l0;

    iget-object v1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lcom/unity3d/player/l0;-><init>(Lcom/unity3d/player/UnityPlayer;Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1, v0}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected cleanup()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->d:Lcom/unity3d/player/u0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/player/u0;->cleanup()V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->f:Lcom/unity3d/player/w0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unity3d/player/w0;->cleanup()V

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->setAccessibilityDelegate(Lcom/unity3d/player/UnityAccessibilityDelegate;)V

    return-void
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 0

    iget-object p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->k:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object p1
.end method

.method protected getFocusedNodeId()I
    .locals 1

    iget v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->g:I

    return v0
.end method

.method protected sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->b:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->b:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0, p1}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method protected sendAnnouncementForVirtualViewId(ILjava/lang/String;)Z
    .locals 2

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    iget-object v1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method protected sendEventForVirtualViewId(II)Z
    .locals 4

    iget-object v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->c:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    iget-object v3, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    const/16 v3, 0x800

    if-ne p2, v3, :cond_1

    .line 0
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    :cond_1
    const v2, 0x8000

    if-ne p2, v2, :cond_3

    iget v2, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->g:I

    if-ne v2, p1, :cond_2

    return v1

    :cond_2
    iput p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->g:I

    iget-object v1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->b:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    new-instance v1, Lcom/unity3d/player/n0;

    iget-object v2, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v2, p1}, Lcom/unity3d/player/n0;-><init>(Lcom/unity3d/player/UnityPlayer;I)V

    iget-object v2, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v2, v1}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    :cond_3
    const/high16 v1, 0x10000

    if-ne p2, v1, :cond_5

    iget p2, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->g:I

    if-ne p2, p1, :cond_4

    const/4 p2, -0x1

    iput p2, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->g:I

    :cond_4
    iget-object p2, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->b:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    new-instance p2, Lcom/unity3d/player/o0;

    iget-object v1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p2, v1, p1}, Lcom/unity3d/player/o0;-><init>(Lcom/unity3d/player/UnityPlayer;I)V

    iget-object p1, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1, p2}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    :cond_5
    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method protected sendEventForVirtualViewIdFromNative(II)Z
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityAccessibilityDelegate;->a:Lcom/unity3d/player/UnityPlayer;

    new-instance v1, Lcom/unity3d/player/m0;

    invoke-direct {v1, p0, p1, p2}, Lcom/unity3d/player/m0;-><init>(Lcom/unity3d/player/UnityAccessibilityDelegate;II)V

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method
