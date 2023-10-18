.class public final synthetic Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;

.field public final synthetic f$1:Landroid/widget/RadioButton;

.field public final synthetic f$2:Landroid/widget/RadioButton;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;Landroid/widget/RadioButton;Landroid/widget/RadioButton;I)V
    .locals 0

    iput p4, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;

    iput-object p2, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda2;->f$1:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda2;->f$2:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda2;->$r8$classId:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;

    iget-object v1, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda2;->f$1:Landroid/widget/RadioButton;

    iget-object p0, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda2;->f$2:Landroid/widget/RadioButton;

    iput-boolean v0, p1, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mIsStandardMode:Z

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-boolean p1, p1, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mIsStandardMode:Z

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void

    :goto_0
    iget-object p1, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;

    iget-object v1, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda2;->f$1:Landroid/widget/RadioButton;

    iget-object p0, p0, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog$$ExternalSyntheticLambda2;->f$2:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mIsStandardMode:Z

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-boolean p1, p1, Lcom/google/android/systemui/power/BatterySaverConfirmationDialog;->mIsStandardMode:Z

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
