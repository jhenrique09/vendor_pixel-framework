.class public abstract Lcom/google/android/systemui/assist/uihints/TranscriptionController_Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Landroid/view/ViewGroup;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;Ljava/lang/Object;Lcom/android/systemui/statusbar/policy/ConfigurationController;)Lcom/google/android/systemui/assist/uihints/TranscriptionController;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    check-cast p2, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;-><init>(Landroid/view/ViewGroup;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v0
.end method
