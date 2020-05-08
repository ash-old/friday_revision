require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

require_relative('../revision.rb')

class RevisionTest < MiniTest::Test
  # test goes here

  # this will run once before EACH test
  def setup()
    @friends = [
      rachel: {
        name: "Rachel Greene",
        job: "Waitress",
        romantic_interests: ["Ross", "Bruce Willis"],
        bank_accounts: [
          {
            name: "Current Account",
            balance: 40
          },
          {
            name: "Savings Account",
            balance: 320
          }
        ]
      },
      ross: {
        name: "Ross Gellar",
        job: "Dinosaurs",
        romantic_interests: ["Rachel", "Emily"],
        bank_accounts: [
          {
            name: "Current Account",
            balance: 800
          }
        ]
      },
      monica: {
        name: "Monica Gellar",
        job: "Chef",
        romantic_interests: ["Jon Faverau",
          "Chandler"],
          bank_accounts: [
            {
              name: "Current Account",
              balance: -20
            },
            {
              name: "Savings Account",
              balance: 400
            }
          ]
        }
      ]
    end


    def test_monica_is_friend()
      #act
      expected + true
      actual = is_friend?(@friends, "Monica Gellar")

      # assert
      assert_equal(expected, actual)

    end
  end
