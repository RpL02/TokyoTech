class Spiral
   def generate_spiral(x, y, n)
      fx = x / 2
      fy = y / 2

      cx = cy = 0
      direction = distance = 1

      yield(cx,cy,n)
      while(cx.abs <= fx || cy.abs <= fy)
         distance.times do cx += direction; yield(cx,cy,n) if(cx.abs <= fx && cy.abs <= fy); end
         distance.times do cy += direction; yield(cx,cy,n) if(cx.abs <= fx && cy.abs <= fy); end
         distance += 1
         direction *= -1
      end
   end
end