describe CategoryPolicy do
  subject { CategoryPolicy }

  let (:current_user) { FactoryGirl.build_stubbed :user }
  let (:other_user) { FactoryGirl.build_stubbed :user }
  let (:admin) { FactoryGirl.build_stubbed :user, :admin }
  let (:archivist) { FactoryGirl.build_stubbed :user, :archivist }

  permissions :index? do
    it "allows access to regular user" do
      expect(subject).to permit(current_user)
    end
    it "allows access for an admin" do
      expect(subject).to permit(admin)
    end
    it "allows access for an archivist" do
      expect(subject).to permit(admin)
    end

  end

  permissions :show? do

    it "allows anyone to see any category" do
      expect(subject).to permit(admin)
    end
  end

  permissions :update? do
    it "prevents updates if not an admin or archivist" do
      expect(subject).not_to permit(current_user)
    end
    it "allows an admin to make updates" do
      expect(subject).to permit(admin)
    end
    it "allows an archivist to make updates" do
      expect(subject).to permit(archivist)
    end

  end

  permissions :destroy? do
    it "allows an admin to delete any category" do
      expect(subject).to permit(admin)
    end
    it "allows an archivist to delete any category" do
      expect(subject).to permit(admin)
    end

    it "prevents deletes if not an admin or archivist" do
      expect(subject).not_to permit(current_user)
    end
  end

    permissions :create? do
      it "allows an admin to create a category" do
        expect(subject).to permit(admin)
      end
      it "allows an archivist to create a category" do
        expect(subject).to permit(archivist)
      end

      it "prevents creation if not an admin or archivist" do
        expect(subject).not_to permit(current_user)
      end
    end


    permissions :new? do
      it "allows an admin to go to new category path" do
        expect(subject).to permit(admin)
      end
      it "allows an archivist to go to new  category path" do
        expect(subject).to permit(archivist)
      end

      it "prevents access to new path if not an admin or archivist" do
        expect(subject).not_to permit(current_user)
      end
    end






end
