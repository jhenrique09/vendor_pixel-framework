.class public final synthetic Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/TranscriptionController;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    sget-object v1, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->GREETING:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/GreetingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    sget-object v1, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->TRANSCRIPTION:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->setTranscription(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
