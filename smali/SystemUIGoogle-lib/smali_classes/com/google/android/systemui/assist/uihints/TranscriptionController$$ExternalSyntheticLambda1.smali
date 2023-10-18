.class public final synthetic Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/TranscriptionController;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda1;->$r8$classId:I

    const-string v0, "TranscriptionController"

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mOnTranscriptionTap:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mDefaultOnTap:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;->onTouchInside()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Transcription tap PendingIntent cancelled"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;->onTouchInside()V

    :goto_0
    return-void

    :goto_1
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mOnGreetingTap:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mDefaultOnTap:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;->onTouchInside()V

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const-string p1, "Greeting tap PendingIntent cancelled"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;->onTouchInside()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
