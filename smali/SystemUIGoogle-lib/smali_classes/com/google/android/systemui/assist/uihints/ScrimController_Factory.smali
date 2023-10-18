.class public abstract Lcom/google/android/systemui/assist/uihints/ScrimController_Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Landroid/view/ViewGroup;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;)Lcom/google/android/systemui/assist/uihints/ScrimController;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/assist/uihints/ScrimController;

    check-cast p1, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;

    check-cast p2, Lcom/google/android/systemui/assist/uihints/LightnessProvider;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/assist/uihints/ScrimController;-><init>(Landroid/view/ViewGroup;Lcom/google/android/systemui/assist/uihints/OverlappedElementController;Lcom/google/android/systemui/assist/uihints/LightnessProvider;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;)V

    return-object v0
.end method
