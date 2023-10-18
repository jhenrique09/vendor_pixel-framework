.class public final synthetic Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p2, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/assist/AssistManager$UiController;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistManager$UiController;->hide()V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;

    iget-object v0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "com.google.android.googlequicksearchbox/com.google.android.voiceinteraction.GsaVoiceInteractionService"

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    iget-boolean v3, v0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mNgaIsAssistant:Z

    iget-boolean v4, v0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->mSysUiIsNgaUi:Z

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->updateAssistantPresence(ZZZ)V

    iput-boolean v2, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mCheckAssistantStatus:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
