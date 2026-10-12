.class public Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# static fields
.field public static final MESSAGE_INFO:Ljava/lang/String; = "MessageInfo"

.field public static final PERMISSION_LIST:Ljava/lang/String; = "PermissionList"


# instance fields
.field final PERMISSIONS_REQUEST_CODE:I

.field afterRequestRationale:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field beforeRequestRationale:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private infoMessage:Ljava/lang/String;

.field private m_callback:Lcom/voxelbusters/essentialkit/utilities/helpers/interfaces/IPermissionRequestCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/16 v0, 0x6f

    iput v0, p0, Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;->PERMISSIONS_REQUEST_CODE:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;->beforeRequestRationale:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;->afterRequestRationale:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "PermissionList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MessageInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;->infoMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;->beforeRequestRationale:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;->updateRequestRationaleStatus(Ljava/util/HashMap;[Ljava/lang/String;)V

    const/16 v0, 0x6f

    invoke-virtual {p0, p1, v0}, Landroid/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;->beforeRequestRationale:Ljava/util/HashMap;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_7

    invoke-static {p3}, Lcom/voxelbusters/essentialkit/utilities/PermissionUtil;->verifyPermissions([I)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;->afterRequestRationale:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;->updateRequestRationaleStatus(Ljava/util/HashMap;[Ljava/lang/String;)V

    array-length p1, p2

    const/4 p3, 0x0

    move v0, p3

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ge v0, p1, :cond_4

    aget-object v1, p2, v0

    iget-object v3, p0, Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;->beforeRequestRationale:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;->afterRequestRationale:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v3, v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-nez v3, :cond_2

    if-nez v1, :cond_2

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    array-length p1, p2

    if-lt p1, v2, :cond_5

    const-string p1, "Please enable the permission from application settings as permission was denied earlier."

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->warning(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;->m_callback:Lcom/voxelbusters/essentialkit/utilities/helpers/interfaces/IPermissionRequestCallback;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/voxelbusters/essentialkit/utilities/helpers/interfaces/IPermissionRequestCallback;->onPermissionDeny()V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;->m_callback:Lcom/voxelbusters/essentialkit/utilities/helpers/interfaces/IPermissionRequestCallback;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/voxelbusters/essentialkit/utilities/helpers/interfaces/IPermissionRequestCallback;->onPermissionGrant()V

    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public setCallback(Lcom/voxelbusters/essentialkit/utilities/helpers/interfaces/IPermissionRequestCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/utilities/helpers/PermissionRequestFragment;->m_callback:Lcom/voxelbusters/essentialkit/utilities/helpers/interfaces/IPermissionRequestCallback;

    return-void
.end method

.method public updateRequestRationaleStatus(Ljava/util/HashMap;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    aget-object v2, p2, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
