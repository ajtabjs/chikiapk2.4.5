.class public Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# instance fields
.field final RequestCode:I

.field intentSenderToLaunch:Landroid/content/IntentSender;

.field intentToLaunch:Landroid/content/Intent;

.field listener:Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFragmentResultListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/16 v0, 0x6f

    iput v0, p0, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;->RequestCode:I

    return-void
.end method

.method private static AddFragment(Landroid/app/Activity;Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private close()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private static launchForResult(Landroid/app/Activity;Landroid/content/Intent;Landroid/content/IntentSender;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFragmentResultListener;)V
    .locals 1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    const-string p0, "Cannot launch an empty intent!"

    invoke-static {p0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;

    invoke-direct {v0}, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;-><init>()V

    if-eqz p1, :cond_2

    iput-object p1, v0, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;->intentToLaunch:Landroid/content/Intent;

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    iput-object p2, v0, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;->intentSenderToLaunch:Landroid/content/IntentSender;

    :cond_3
    :goto_1
    iput-object p3, v0, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;->listener:Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFragmentResultListener;

    invoke-static {p0, v0}, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;->AddFragment(Landroid/app/Activity;Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;)V

    :goto_2
    return-void
.end method

.method public static launchForResult(Landroid/app/Activity;Landroid/content/Intent;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFragmentResultListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, p2}, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;->launchForResult(Landroid/app/Activity;Landroid/content/Intent;Landroid/content/IntentSender;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFragmentResultListener;)V

    return-void
.end method

.method public static launchForResult(Landroid/app/Activity;Landroid/content/IntentSender;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFragmentResultListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0, p1, p2}, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;->launchForResult(Landroid/app/Activity;Landroid/content/Intent;Landroid/content/IntentSender;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFragmentResultListener;)V

    return-void
.end method

.method public static launchIntent(Landroid/content/Intent;Landroid/app/Activity;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFragmentResultListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p0, p2}, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;->launchForResult(Landroid/app/Activity;Landroid/content/Intent;Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFragmentResultListener;)V

    return-void
.end method

.method private onContextAttached(Landroid/content/Context;)V
    .locals 8

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;->intentToLaunch:Landroid/content/Intent;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;->intentSenderToLaunch:Landroid/content/IntentSender;

    if-nez v0, :cond_0

    const-string p1, "Intent/Intent Sender to launch is null which is unexpected. Closing this fragment"

    :goto_0
    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;->reportErrorAndClose()V

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0x6f

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error launching intent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;->intentSenderToLaunch:Landroid/content/IntentSender;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v2, 0x6f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/Fragment;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error launching intent sender: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    return-void
.end method

.method private reportErrorAndClose()V
    .locals 3

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;->listener:Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFragmentResultListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v2}, Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFragmentResultListener;->onResult(ILandroid/content/Intent;Z)V

    :cond_0
    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;->close()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;->listener:Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFragmentResultListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, p2, p3, v0}, Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFragmentResultListener;->onResult(ILandroid/content/Intent;Z)V

    :cond_0
    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;->close()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/utilities/common/ConnectorFragment;->onContextAttached(Landroid/content/Context;)V

    return-void
.end method
