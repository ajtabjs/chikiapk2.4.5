.class final Lcom/unity3d/player/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lcom/unity3d/player/o;


# instance fields
.field private a:Lcom/unity3d/player/UnityPlayer;

.field private b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

.field private c:Ljava/util/HashSet;

.field private d:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgeta(Lcom/unity3d/player/o;)Lcom/unity3d/player/UnityPlayer;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/o;->a:Lcom/unity3d/player/UnityPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetb(Lcom/unity3d/player/o;)Lcom/google/android/play/core/assetpacks/AssetPackManager;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/o;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetc(Lcom/unity3d/player/o;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/o;->c:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetd(Lcom/unity3d/player/o;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/o;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputd(Lcom/unity3d/player/o;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/o;->d:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgete()Lcom/unity3d/player/o;
    .locals 1

    sget-object v0, Lcom/unity3d/player/o;->e:Lcom/unity3d/player/o;

    return-object v0
.end method

.method private constructor <init>(Lcom/unity3d/player/UnityPlayer;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/unity3d/player/o;->e:Lcom/unity3d/player/o;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/unity3d/player/o;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p2}, Lcom/google/android/play/core/assetpacks/AssetPackManagerFactory;->getInstance(Landroid/content/Context;)Lcom/google/android/play/core/assetpacks/AssetPackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/o;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/o;->c:Ljava/util/HashSet;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "AssetPackManagerWrapper should be created only once. Use getInstance() instead."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/unity3d/player/UnityPlayer;Landroid/content/Context;)Lcom/unity3d/player/o;
    .locals 1

    sget-object v0, Lcom/unity3d/player/o;->e:Lcom/unity3d/player/o;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unity3d/player/o;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/o;-><init>(Lcom/unity3d/player/UnityPlayer;Landroid/content/Context;)V

    sput-object v0, Lcom/unity3d/player/o;->e:Lcom/unity3d/player/o;

    :cond_0
    sget-object p0, Lcom/unity3d/player/o;->e:Lcom/unity3d/player/o;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/unity3d/player/i;

    iget-object v1, p0, Lcom/unity3d/player/o;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {v0, p0, v1, p1}, Lcom/unity3d/player/i;-><init>(Lcom/unity3d/player/o;Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)V

    iget-object p1, p0, Lcom/unity3d/player/o;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-interface {p1, v0}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->registerListener(Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/o;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-interface {v0, p1}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->getPackLocation(Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetPackLocation;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackLocation;->assetsPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/app/Activity;Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/o;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-interface {v0, p1}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->showCellularDataConfirmation(Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/unity3d/player/k;

    iget-object v1, p0, Lcom/unity3d/player/o;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {v0, v1, p2}, Lcom/unity3d/player/k;-><init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/unity3d/player/i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/o;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    check-cast p1, Lcom/unity3d/player/i;

    invoke-interface {v0, p1}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->unregisterListener(Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;)V

    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/o;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->cancel(Ljava/util/List;)Lcom/google/android/play/core/assetpacks/AssetPackStates;

    return-void
.end method

.method public final a([Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)V
    .locals 3

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/o;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->getPackStates(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/unity3d/player/l;

    iget-object v2, p0, Lcom/unity3d/player/o;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {v1, v2, p2, p1}, Lcom/unity3d/player/l;-><init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :cond_1
    :goto_0
    return-void
.end method

.method public final a([Ljava/lang/String;Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/o;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->getPackStates(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/unity3d/player/n;

    iget-object v2, p0, Lcom/unity3d/player/o;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {v1, v2, p2, p1}, Lcom/unity3d/player/n;-><init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/IAssetPackManagerStatusQueryCallback;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/o;->b:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-interface {v0, p1}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->removePack(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
