.class public final Lcom/google/android/systemui/columbus/legacy/actions/Action$setAvailable$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/Action;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/Action;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/Action$setAvailable$2;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/Action$setAvailable$2;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/Action;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/systemui/columbus/legacy/actions/Action;->updateFeedbackEffects(ILcom/google/android/systemui/columbus/legacy/sensors/GestureSensor$DetectionProperties;)V

    return-void
.end method
