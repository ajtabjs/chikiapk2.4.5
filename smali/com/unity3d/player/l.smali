.class final Lcom/unity3d/player/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

.field private b:Lcom/unity3d/player/UnityPlayer;

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/l;->b:Lcom/unity3d/player/UnityPlayer;

    iput-object p2, p0, Lcom/unity3d/player/l;->a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    iput-object p3, p0, Lcom/unity3d/player/l;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 14

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/assetpacks/AssetPackStates;
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->packStates()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/assetpacks/AssetPackState;

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/AssetPackState;->errorCode()I

    move-result v3

    const/4 v4, 0x4

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v3

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_2

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v6

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/AssetPackState;->errorCode()I

    move-result v12

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->totalBytes()J

    move-result-wide v7

    if-ne v6, v4, :cond_3

    move-wide v9, v7

    goto :goto_2

    :cond_3
    const-wide/16 v2, 0x0

    move-wide v9, v2

    :goto_2
    iget-object v2, p0, Lcom/unity3d/player/l;->b:Lcom/unity3d/player/UnityPlayer;

    new-instance v13, Lcom/unity3d/player/h;

    iget-object v3, p0, Lcom/unity3d/player/l;->a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    const/4 v11, 0x0

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/unity3d/player/h;-><init>(Ljava/util/Set;Ljava/lang/String;IJJII)V

    invoke-virtual {v2, v13}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 0
    :cond_4
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_6

    invoke-static {}, Lcom/unity3d/player/o;->-$$Nest$sfgete()Lcom/unity3d/player/o;

    move-result-object p1

    iget-object v0, p0, Lcom/unity3d/player/l;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v2, p0, Lcom/unity3d/player/l;->a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/unity3d/player/o;->-$$Nest$sfgete()Lcom/unity3d/player/o;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    invoke-static {p1}, Lcom/unity3d/player/o;->-$$Nest$fgetd(Lcom/unity3d/player/o;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    new-instance v4, Lcom/unity3d/player/i;

    invoke-direct {v4, p1, v0, v2}, Lcom/unity3d/player/i;-><init>(Lcom/unity3d/player/o;Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)V

    invoke-static {p1}, Lcom/unity3d/player/o;->-$$Nest$fgetb(Lcom/unity3d/player/o;)Lcom/google/android/play/core/assetpacks/AssetPackManager;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->registerListener(Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;)V

    invoke-static {p1, v4}, Lcom/unity3d/player/o;->-$$Nest$fputd(Lcom/unity3d/player/o;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    check-cast v4, Lcom/unity3d/player/i;

    invoke-virtual {v4, v2}, Lcom/unity3d/player/i;->a(Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;)V

    :goto_3
    invoke-static {p1}, Lcom/unity3d/player/o;->-$$Nest$fgetc(Lcom/unity3d/player/o;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Lcom/unity3d/player/o;->-$$Nest$fgetb(Lcom/unity3d/player/o;)Lcom/google/android/play/core/assetpacks/AssetPackManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->fetch(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    monitor-exit v3

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_6
    :goto_4
    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/unity3d/player/l;->c:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    aget-object v6, v0, v2

    :cond_7
    instance-of v0, p1, Lcom/google/android/play/core/assetpacks/AssetPackException;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/google/android/play/core/assetpacks/AssetPackException;

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackException;->getErrorCode()I

    move-result p1

    :goto_5
    move v13, p1

    goto :goto_6

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_7

    const/16 p1, -0x64

    goto :goto_5

    :goto_6
    iget-object p1, p0, Lcom/unity3d/player/l;->b:Lcom/unity3d/player/UnityPlayer;

    new-instance v0, Lcom/unity3d/player/h;

    iget-object v1, p0, Lcom/unity3d/player/l;->a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lcom/unity3d/player/h;-><init>(Ljava/util/Set;Ljava/lang/String;IJJII)V

    invoke-virtual {p1, v0}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_8

    :cond_9
    invoke-static {}, Lcom/unity3d/player/o;->-$$Nest$sfgete()Lcom/unity3d/player/o;

    move-result-object p1

    iget-object v1, p0, Lcom/unity3d/player/l;->a:Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v4, v0

    move v5, v2

    :goto_7
    if-ge v5, v4, :cond_a

    aget-object v6, v0, v5

    invoke-static {p1}, Lcom/unity3d/player/o;->-$$Nest$fgetb(Lcom/unity3d/player/o;)Lcom/google/android/play/core/assetpacks/AssetPackManager;

    move-result-object v7

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->getPackStates(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v7

    new-instance v8, Lcom/unity3d/player/l;

    invoke-static {p1}, Lcom/unity3d/player/o;->-$$Nest$fgeta(Lcom/unity3d/player/o;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/String;

    aput-object v6, v10, v2

    invoke-direct {v8, v9, v1, v10}, Lcom/unity3d/player/l;-><init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/IAssetPackManagerDownloadStatusCallback;[Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_a
    :goto_8
    return-void
.end method
