.class public Lcom/voxelbusters/essentialkit/utilities/PermissionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static SHARED_PREFERENCES_PERMISSION_HISTORY_KEY:Ljava/lang/String; = "VB_SHARED_PREFERENCES_PERMISSION_HISTORY"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPermissionHistoryStatus(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/voxelbusters/essentialkit/utilities/PermissionUtil;->SHARED_PREFERENCES_PERMISSION_HISTORY_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getPermissionStatus(Landroid/content/Context;Ljava/lang/String;)Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;
    .locals 1

    if-nez p1, :cond_0

    sget-object p0, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;->Authorized:Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;->Authorized:Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    return-object p0

    :cond_1
    invoke-static {p0, p1}, Lcom/voxelbusters/essentialkit/utilities/PermissionUtil;->getPermissionHistoryStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;->NotDetermined:Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    return-object p0

    :cond_2
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;->Denied:Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    return-object p0

    :cond_3
    sget-object p0, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;->NotDetermined:Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    return-object p0
.end method

.method static synthetic lambda$requestPermissions$0(Ljava/util/ArrayList;Ljava/lang/String;Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const-string v1, "PermissionList"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p0, "MessageInfo"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public static requestPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/voxelbusters/essentialkit/utilities/helpers/interfaces/IPermissionRequestCallback;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0, p2, p3}, Lcom/voxelbusters/essentialkit/utilities/PermissionUtil;->requestPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/voxelbusters/essentialkit/utilities/helpers/interfaces/IPermissionRequestCallback;)V

    return-void
.end method

.method public static requestPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/voxelbusters/essentialkit/utilities/helpers/interfaces/IPermissionRequestCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/voxelbusters/essentialkit/utilities/helpers/interfaces/IPermissionRequestCallback;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcom/voxelbusters/essentialkit/utilities/ApplicationUtil;->isPcPlatform(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/voxelbusters/essentialkit/utilities/ApplicationUtil;->isPermissionSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/voxelbusters/essentialkit/utilities/helpers/interfaces/IPermissionRequestCallback;->onPermissionDeny()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {p0, v1}, Lcom/voxelbusters/essentialkit/utilities/PermissionUtil;->getPermissionStatus(Landroid/content/Context;Ljava/lang/String;)Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    move-result-object v2

    sget-object v3, Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;->Authorized:Lcom/voxelbusters/essentialkit/utilities/PermissionStatus;

    if-eq v2, v3, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_6

    if-eqz p3, :cond_5

    invoke-interface {p3}, Lcom/voxelbusters/essentialkit/utilities/helpers/interfaces/IPermissionRequestCallback;->onPermissionGrant()V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/voxelbusters/essentialkit/utilities/PermissionUtil;->setPermissionHistoryStatus(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    new-instance p1, Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;

    invoke-direct {p1}, Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;-><init>()V

    invoke-virtual {p1, p3}, Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;->setCallback(Lcom/voxelbusters/essentialkit/utilities/helpers/interfaces/IPermissionRequestCallback;)V

    check-cast p0, Landroid/app/Activity;

    new-instance p3, Lcom/voxelbusters/essentialkit/utilities/PermissionUtil$$ExternalSyntheticLambda0;

    invoke-direct {p3, v0, p2, p1, p0}, Lcom/voxelbusters/essentialkit/utilities/PermissionUtil$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;Landroid/app/Activity;)V

    invoke-virtual {p0, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static setPermissionHistoryStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/voxelbusters/essentialkit/utilities/PermissionUtil;->SHARED_PREFERENCES_PERMISSION_HISTORY_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static verifyPermissions([I)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    array-length v0, p0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    aget v4, p0, v3

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method
