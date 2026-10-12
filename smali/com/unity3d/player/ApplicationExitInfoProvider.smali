.class Lcom/unity3d/player/ApplicationExitInfoProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHistoricalProcessExitReasons(Landroid/app/Activity;Ljava/lang/String;II)[Lcom/unity3d/player/ApplicationExitInfoBase;
    .locals 2

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->RED_VELVET_CAKE_SUPPORT:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p2, p1, [Lcom/unity3d/player/ApplicationExitInfoBase;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    new-instance v1, Lcom/unity3d/player/ApplicationExitInfoWrapper;

    invoke-direct {v1, v0}, Lcom/unity3d/player/ApplicationExitInfoWrapper;-><init>(Landroid/app/ApplicationExitInfo;)V

    aput-object v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    const-string p1, "ApplicationExitInfoProvider: ApplicationExitInfo is only available from api 30 (Android 11)"

    invoke-static {p0, p1}, Lcom/unity3d/player/D;->Log(ILjava/lang/String;)V

    const/4 p2, 0x0

    :cond_1
    return-object p2
.end method

.method public static setProcessStateSummary(Landroid/app/Activity;[B)V
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->RED_VELVET_CAKE_SUPPORT:Z

    if-eqz v0, :cond_0

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->setProcessStateSummary([B)V

    :cond_0
    return-void
.end method
