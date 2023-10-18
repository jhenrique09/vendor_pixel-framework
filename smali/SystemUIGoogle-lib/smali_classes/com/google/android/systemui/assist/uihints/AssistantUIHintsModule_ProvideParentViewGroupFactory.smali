.class public abstract Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideParentViewGroupFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideParentViewGroup(Ljava/lang/Object;)Landroid/view/ViewGroup;
    .locals 0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mRoot:Lcom/google/android/systemui/assist/uihints/AssistUIView;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method
