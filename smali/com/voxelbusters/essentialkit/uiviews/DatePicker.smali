.class public Lcom/voxelbusters/essentialkit/uiviews/DatePicker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFeature;


# instance fields
.field private context:Landroid/app/Activity;

.field private dialog:Landroid/app/DatePickerDialog;

.field private listener:Lcom/voxelbusters/essentialkit/uiviews/IUiViews$IDatePickerListener;

.field private final onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private onDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/uiviews/DatePicker;->context:Landroid/app/Activity;

    new-instance v0, Lcom/voxelbusters/essentialkit/uiviews/d;

    invoke-direct {v0, p0}, Lcom/voxelbusters/essentialkit/uiviews/d;-><init>(Lcom/voxelbusters/essentialkit/uiviews/DatePicker;)V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/uiviews/DatePicker;->onDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    new-instance v0, Lcom/voxelbusters/essentialkit/uiviews/e;

    invoke-direct {v0, p0}, Lcom/voxelbusters/essentialkit/uiviews/e;-><init>(Lcom/voxelbusters/essentialkit/uiviews/DatePicker;)V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/uiviews/DatePicker;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/voxelbusters/essentialkit/uiviews/f;

    invoke-direct {v0, p0}, Lcom/voxelbusters/essentialkit/uiviews/f;-><init>(Lcom/voxelbusters/essentialkit/uiviews/DatePicker;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/voxelbusters/essentialkit/uiviews/DatePicker;)Lcom/voxelbusters/essentialkit/uiviews/IUiViews$IDatePickerListener;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/uiviews/DatePicker;->listener:Lcom/voxelbusters/essentialkit/uiviews/IUiViews$IDatePickerListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/voxelbusters/essentialkit/uiviews/DatePicker;)Landroid/app/DatePickerDialog;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/uiviews/DatePicker;->dialog:Landroid/app/DatePickerDialog;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/voxelbusters/essentialkit/uiviews/DatePicker;Landroid/app/DatePickerDialog;)Landroid/app/DatePickerDialog;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/uiviews/DatePicker;->dialog:Landroid/app/DatePickerDialog;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/voxelbusters/essentialkit/uiviews/DatePicker;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/uiviews/DatePicker;->context:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/voxelbusters/essentialkit/uiviews/DatePicker;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/uiviews/DatePicker;->onDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/voxelbusters/essentialkit/uiviews/DatePicker;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/uiviews/DatePicker;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method


# virtual methods
.method public getFeatureName()Ljava/lang/String;
    .locals 1

    const-string v0, "Date Picker"

    return-object v0
.end method

.method public setListener(Lcom/voxelbusters/essentialkit/uiviews/IUiViews$IDatePickerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/uiviews/DatePicker;->listener:Lcom/voxelbusters/essentialkit/uiviews/IUiViews$IDatePickerListener;

    return-void
.end method

.method public setMaxValue(Ljava/util/Date;)V
    .locals 3
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/RunOnUiThread;
    .end annotation

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/uiviews/DatePicker;->dialog:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    return-void
.end method

.method public setMinValue(Ljava/util/Date;)V
    .locals 3
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/RunOnUiThread;
    .end annotation

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/uiviews/DatePicker;->dialog:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMinDate(J)V

    return-void
.end method

.method public setValue(III)V
    .locals 1
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/RunOnUiThread;
    .end annotation

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/uiviews/DatePicker;->dialog:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DatePicker;->updateDate(III)V

    return-void
.end method

.method public show()V
    .locals 1
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/RunOnUiThread;
    .end annotation

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/uiviews/DatePicker;->dialog:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
