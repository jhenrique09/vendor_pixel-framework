.class public abstract Lcom/google/android/systemui/assist/uihints/IconController_Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/policy/ConfigurationController;)Lcom/google/android/systemui/assist/uihints/IconController;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/assist/uihints/IconController;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/assist/uihints/IconController;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v0
.end method
